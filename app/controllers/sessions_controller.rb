class SessionsController < ApplicationController
  def new
  end
  
  def create
    pastor = Pastor.find_by_email(params[:email])
    if pastor && pastor.authenticate(params[:password])
      session[:pastor_id] = pastor.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password invalid!"
      render "new"
    end
  end
  
  def destroy
    session[:pastor_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
  
end
