class SessionsController < ApplicationController
  def new
  end
  
  def create
    pastor = Pastor.find_by_email(params[:email])
    if pastor && pastor.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = pastor.auth_token
      else
        cookies[:auth_token] = pastor.auth_token
      end
      redirect_to patrols_url, notice: "Logged in!"
    else
      flash.now[:error] = "Email or password invalid!"
      render "new"
    end
  end
  
  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: "Logged out!"
  end
  
end
