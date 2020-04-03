class RidesController < ApplicationController

  def update
    if Ride.where(id: params[:ride_id]).empty?
      flash[:notice] = "Sorry, this ride does not exist"
      redirect_to "/mechanics/#{params[:id]}"
    else
      ride = Ride.find(params[:ride_id])
      ride.mechanic_id = params[:id]
      ride.save
      redirect_to "/mechanics/#{params[:id]}"
    end
  end

end
