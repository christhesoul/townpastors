class ApplicationController < ActionController::Base
  protect_from_forgery
  
private

  def current_pastor
    @current_pastor ||= Pastor.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  helper_method :current_pastor
  
end
