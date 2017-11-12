class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:username, :password, :password_confirmation)
  end
  devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    user_params.permit(:username, :password, :remember_me)
  end
end 
end
