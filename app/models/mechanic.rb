class Mechanic < ApplicationRecord
  validates_presence_of :name, :experience
end
