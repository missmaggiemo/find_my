class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  helper_method :form_auth
  
  def after_sign_in_path_for(user)
    user_path(user)
  end

  def after_sign_out_path_for(user)
    root_path
  end
  
  def form_auth
    "<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}' id='authenticity_token'>".html_safe
  end
  
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
  
end
