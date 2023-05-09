class ContactsController < ApplicationController
  before_action :set_categories
  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      UserNotifierMailer.auto_reply_email(@contact.name, @contact.email).deliver
      redirect_to root_path, notice: "Message sent successfully"
    else
      render :new
    end
  end

  private

  def set_categories
    @categories = Category.all
  end
end
