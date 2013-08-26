require 'spec_helper'

# In order to track animals at the zoo,
# as a zookeeper,
# I want to create an animal

feature "user creates animal", js: true do
  scenario "creating an animal" do
    visit '/animals/new'

    fill_in 'species', with: 'frog'
    fill_in 'color', with: 'green'

    click_button 'save'

    expect(page).to have_content 'frog'
    expect(page).to have_content 'green'
    expect(current_path).to eql animals_path
  end
end