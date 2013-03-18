class PasswordResetsController < ApplicationController
  def new
  end
  
  def create
    pastor = Pastor.find_by_email(params[:email])
    pastor.send_password_reset if pastor
    redirect_to root_url, :notice => "Email sent with password reset instructions"
  end
  
  def edit
    @pastor = Pastor.find_by_password_reset_token!(params[:id])
  end
  
  def update
    @pastor = Pastor.find_by_password_reset_token!(params[:id])
    if @pastor.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password reset has expired"
    elsif @pastor.update_attributes(params[:pastor])
      redirect_to root_url, :notice => "Password has been changed"
    else
      render :edit
    end
  end
end
