class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_admin
    unless current_user.try(:admin?)
      redirect_to root_path, alert: 'Access Denied'
    end
  end

  def configure_permitted_parameters
    # rubocop:disable Metrics/LineLength
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    # rubocop:enable Metrics/LineLength
  end
end
