# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :set_categories
  # GET /resource/sign_in
  def new
    @categories = Category.all
    super
  end

  # POST /resource/sign_in
  def create
    @categories = Category.all
    super
  end

  private

  def category_params
    params.require(:name).permit(:description, :photo)
  end

  def set_categories
    @categories = Category.all
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
