class ItineraryItem < ApplicationRecord
  belongs_to :itinerary
  belongs_to :attraction
end
