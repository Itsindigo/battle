require 'capybara/rspec'
require 'capybara/dsl'

feature 'Deduct HP via Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end
end
