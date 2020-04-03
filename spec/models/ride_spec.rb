require 'rails_helper'

describe Ride, type: :model do

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :rating }
  end

end
