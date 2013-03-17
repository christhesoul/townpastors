class PasswordResetsController < ApplicationController
  def new
  end
  
  def create
    pastor = Pastor.find_by_email(params[:email])
    pastor.send_password_reset if pastor
    redirect_to root_url, :notice => "Email sent with password reset instructions"
  end
  
  def edit
    pastor = Pastor.find_by_password_reset_token!(params[:id])
  end
end
