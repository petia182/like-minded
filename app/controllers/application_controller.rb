class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper :all

  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_action :verify_authorized, :except => :index, unless: :devise_controller?
  after_action :verify_policy_scoped, :only => :index, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

def configure_permitted_parameters # Devise
 devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email])
end

private

def user_not_authorized
  flash[:alert] = "You are not authorized to perform this action."
  redirect_to(request.referrer || root_path)
end

def skip_pundit?
  devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
end

end
