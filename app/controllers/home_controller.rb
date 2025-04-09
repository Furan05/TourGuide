class HomeController < ApplicationController
  def index
    @popular_destinations = Destination.order(created_at: :desc).limit(6)
  end
end
