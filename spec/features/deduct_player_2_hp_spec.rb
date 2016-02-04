require 'capybara/rspec'
require 'capybara/dsl'

feature "Deducting HP" do
  scenario "player 2 is attacked" do
    sign_in_and_play
    click_button('Attack Mittens')
    # @player_1_attacks
    expect(page).to have_content "Mittens: 80HP"
  end
end
