class ApplicationController < ActionController::Base

  # ==========ここから追加する==========
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username])
    end
  # ==========ここまで追加する==========

end
