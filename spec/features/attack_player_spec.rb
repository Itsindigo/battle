require 'capybara/rspec'
require 'capybara/dsl'

feature 'Deduct HP via Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    first_turn
  end
end
