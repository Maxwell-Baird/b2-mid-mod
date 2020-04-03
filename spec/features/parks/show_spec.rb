require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can see a park at '/parks/:park_id'" do

    park = Park.create(name: "Fun Land",
                       admissions: 20.00)

    park.rides.create(name: "Slide of DOOOM",
                      rating: 2)
    park.rides.create(name: "Maze of Corn",
                      rating: 10)
    park.rides.create(name: "The Upside Down",
                      rating: 6)
    visit "/parks/#{park.id}"

    expect(page).to have_content(park.name)
    expect(page).to have_content('1. Maze of Corn')
    expect(page).to have_content('2. Slide of DOOOM')
    expect(page).to have_content('3. The Upside Down')
    expect(page).to have_content('Average Thrill Rating of Rides: 6.0/10')

  end
end
