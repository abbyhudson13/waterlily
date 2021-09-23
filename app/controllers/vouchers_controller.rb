class VouchersController < ApplicationController
  before_action :authenticate_user!, except: [:new]
  before_action :set_categories
  before_action :set_voucher, only: [:show, :edit, :update]

  def new
    @voucher = Voucher.new
    authorize @voucher
  end

  def create
    @voucher  = Voucher.create!(treatment: treatment,
      treatment_name: treatment.title,
      amount: price,
      state: 'pending',
      user: current_user,
      message: message,
      voucher_code: voucher_code,
      expiry_date: Date.today + 6.months)
    authorize @voucher
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: treatment.title,
        amount: price,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: vouchers_url,
      cancel_url: vouchers_url
    )
    @voucher.update(checkout_session_id: session.id)
    redirect_to new_voucher_payment_path(@voucher)
  end

  def index
    @vouchers = policy_scope(Voucher).order(created_at: :desc)
  end

  def show
    @subcategory_name = @voucher.treatment.subcategory.name
    authorize @voucher
    generate_qr_code
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show", template: 'vouchers/show.html.erb', layout: "pdf.html.erb"
      end
    end
  end

  def edit
    authorize @voucher
  end

  def update
    @voucher.update(voucher_params)
    if @voucher.save!
      redirect_to vouchers_path
    else
      render :edit
    end
    authorize @voucher
  end


private

  def voucher_params
    params.require(:voucher).permit(:price, :voucher_code, :expiry_date, :redeemed, :treatment_id)
  end

  def set_categories
    @categories ||= Category.all
  end

  def set_voucher
    @voucher ||= Voucher.find(params[:id])
  end

  def treatment
    @treatment ||= Treatment.find(params[:voucher][:treatment_id])
  end

  def price
    treatment.special_offer? ? treatment.offer_price_cents : treatment.standard_price_cents
  end

  def message
    @message ||= params[:voucher][:message]
  end

  def voucher_code
    letters = (0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a
    voucher_code = Date.today.strftime("%Y%m") + letters.sample(8).join
    voucher_code
  end

  def generate_qr_code
    qrcode = RQRCode::QRCode.new("https://www.water-lily.co.uk/vouchers/#{@voucher.id}")
    @svg = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 3
    )
  end
end
