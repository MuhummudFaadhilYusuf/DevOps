class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :password, :password_confirmation, user_profile_attributes: [:age, :location, :mobile_number, :user_tag], address_attributes: [:address1, :address2, :city, :postcode]])
    end
end
