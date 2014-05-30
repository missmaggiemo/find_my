class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  helper_method :form_auth
  
  def after_sign_in_path_for(user)
    sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
    if request.referer == sign_in_url
      super
    else
      user.generate_recommendation
      stored_location_for(user) || request.referer || root_path
    end
  end
  
  def after_sign_out_path_for(user)
    root_path
  end
  
  def after_sign_up_path_for(user)
    registration_url = url_for(:action => 'new', :controller => 'users', :only_path => false, :protocol => 'http')
    if request.referer == registration_url
      super
    else
      stored_location_for(user) || request.referer || root_path
    end
  end

  
  def form_auth
    "<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}' id='authenticity_token'>".html_safe
  end
  
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
  
end
