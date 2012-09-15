class PastorsController < ApplicationController
  def new
    @pastor = Pastor.new
  end
  
  def create
    @pastor = Pastor.new(params[:pastor])
    if @pastor.save
      session[:pastor_id] = @pastor.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
  def index
    @pastors = Pastor.all
  end
end
