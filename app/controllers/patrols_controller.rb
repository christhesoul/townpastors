class PatrolsController < ApplicationController
  
  def new
    @patrol = Patrol.new
  end
  
  def create
    @patrol = Patrol.new(params[:patrol])
    if @patrol.save
      redirect_to patrols_url, notice: "Patrol added"
    else
      render "new"
    end
  end
  
  def index
    if current_pastor
      @patrols = Patrol.all
      @shifts = Shift.where(:pastor_id => current_pastor.id)
      @responded_to_shifts = @shifts.pluck(:patrol_id)
    else
      redirect_to new_session_url, notice: "Please login to continue"
    end
  end
  
end