class Park < ApplicationRecord
  validates_presence_of :name, :admissions
  has_many :rides

  def average
    average = rides.average(:rating)
    average.round(2)
  end
end
