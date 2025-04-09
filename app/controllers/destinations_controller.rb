# app/controllers/destinations_controller.rb
class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @attractions = @destination.attractions
  end
end
