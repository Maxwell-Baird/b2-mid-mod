require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I can see a mechanic at '/mechanics/:id'" do

    mechanic = Mechanic.create(name: "Bob McBob",
                                  experience: 5)
    park = Park.create(name: "Fun Land",
                       admissions: 20.00)


    mechanic.rides.create(name: "Slide of DOOOM",
                          rating: 2,
                          park_id: park.id)
    mechanic.rides.create(name: "Maze of Corn",
                          rating: 10,
                          park_id: park.id)


    visit "/mechanics/#{mechanic.id}"
    expect(page).to have_content("Mechanic: #{mechanic.name}")
    expect(page).to have_content("Years of Experience: #{mechanic.experience}")
    expect(page).to have_content("Slide of DOOOM")
    expect(page).to have_content("Maze of Corn")
  end

  it "I can add a ride to the workload at '/mechanics/:id'" do

    mechanic = Mechanic.create(name: "Bob McBob",
                                  experience: 5)
    park = Park.create(name: "Fun Land",
                       admissions: 20.00)


    park.rides.create(name: "Cheesy Dance",
                      rating: 2)

    visit "/mechanics/#{mechanic.id}"
    expect(page).to have_content("Add a ride to workload:")
    expect(page).to have_field(:id)
    fill_in :id, with: park.rides.first
    click_button "Submit"
    expect(page).to have_content("Cheesy Dance")
  end

end
