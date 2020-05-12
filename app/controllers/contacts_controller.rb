class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @categories = Category.all
  end

  def index
    @contacts = Contact.all
  end

  def create
    @categories = Category.all
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    redirect_to root_path, notice: 'Message sent successfully'
    else
      render :new
    end
  end

end
