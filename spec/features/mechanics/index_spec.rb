require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can see all mechanics at '/mechanics'" do

    mechanic1 = Mechanic.create(name: "Bob McBob",
                                  experience: 5)
    mechanic2 = Mechanic.create(name: "Jane Doe",
                                  experience: 13)
    visit "/mechanics"

    within("mechanics-#{mechanic1.id}") do
      expect(page).to have_content(mechanic1.name)
      expect(page).to have_content(mechanic1.experience)
    end
    within("mechanics-#{mechanic2.id}") do
      expect(page).to have_content(mechanic2.name)
      expect(page).to have_content(mechanic2.experience)
    end
  end
end
