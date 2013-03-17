class PastorsController < ApplicationController
  def new
    @pastor = Pastor.new
  end
  
  def create
    @pastor = Pastor.new(params[:pastor])
    if @pastor.save
      cookies[:auth_token] = @pastor.auth_token
      #send email
      PastorMailer.signup_confirmation(@pastor).deliver
      redirect_to patrols_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
  def index
    @pastors = Pastor.all
  end
end
