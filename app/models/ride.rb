class Ride < ApplicationRecord
  validates_presence_of :name, :rating
end
