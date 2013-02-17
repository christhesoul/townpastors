class ShiftsController < ApplicationController
  def create
    @shift = Shift.new(params[:shift])
    @shift.pastor_id = current_pastor.id
    @shift.status = "available"
    if @shift.save
      redirect_to patrols_url, notice: "Thanks for joining us. We'll confirm in due course."
    else
      redirect_to patrols_url, alert: "You've already said you're available"
    end
  end
end