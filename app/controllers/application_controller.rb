class ApplicationController < ActionController::Base
  protect_from_forgery
  
private

  def current_pastor
    @current_pastor ||= Pastor.find(session[:pastor_id]) if session[:pastor_id]
  end
  helper_method :current_pastor
  
end
