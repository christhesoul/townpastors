class ShiftsController < ApplicationController
  def create
    @shift = Shift.new(params[:shift])
    @shift.pastor_id = current_pastor.id
    if @shift.save
      if @shift.status == "available"
        redirect_to patrols_url, notice: "Thanks for joining us. We'll confirm in due course."
      else
        redirect_to patrols_url, notice: "Sorry you are unable to join us."
      end
    end
  end
  
  def update
    @shift = Shift.find(params[:id])
    @shift.update_attributes(params[:shift])
    if @shift.save
      if @shift.status == "available"
        redirect_to patrols_url, notice: "Thanks for joining us. We'll confirm in due course."
      else
        redirect_to patrols_url, notice: "Sorry you are unable to join us."
      end
    else
      redirect_to patrols_url, alert: "You've already said you're available"
    end
  end
end