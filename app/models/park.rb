class Park < ApplicationRecord
  validates_presence_of :name, :admissions
end
