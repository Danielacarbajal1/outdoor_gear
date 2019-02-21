class ApplicationController < ActionController::Base
  before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
     skip_before_action :verify_authenticity_token
  protected

  def configure_permitted_parameters

    attributes = [:first_name, :last_name, :address, :email, :password, :phone_number, :photo]

    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
