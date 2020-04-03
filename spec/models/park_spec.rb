require 'rails_helper'

describe Park, type: :model do

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :admissions }
  end

  describe 'relationships' do
    it { should have_many :rides }
  end

  describe '#average' do
    it 'averages the ratings of rides' do
      park = Park.create(name: "Fun Land",
                         admissions: 20.00)
      mechanic = Mechanic.create(name: "Bob McBob",
                                 experience: 5)

      park.rides.create(name: "Slide of DOOOM",
                        rating: 5,
                        mechanic_id: mechanic.id)
      park.rides.create(name: "Maze of Corn",
                        rating: 5,
                        mechanic_id: mechanic.id)
      park.rides.create(name: "The Upside Down",
                        rating: 4,
                        mechanic_id: mechanic.id)
      expect(park.average).to eq(4.67)
    end
  end
end
