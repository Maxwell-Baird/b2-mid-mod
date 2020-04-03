require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can see a mechanic at '/mechanics/:id'" do

    mechanic = Mechanic.create(name: "Bob McBob",
                                  experience: 5)


    mechanic.rides.create(name: "Slide of DOOOM",
                      rating: 2)
    mechanic.rides.create(name: "Maze of Corn",
                      rating: 10)


    visit "/mechanics/#{mechanic.id}"
    expect(page).to have_content("Mechanic: #{mechanic.name}")
    expect(page).to have_content("Years of Experience #{mechanic1.experience}")
    expect(page).to have_content("Slide of DOOOM")
    expect(page).to have_content("Maze of Corn")

  end
end
