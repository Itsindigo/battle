require 'capybara/rspec'
require 'capybara/dsl'

feature "Switch turn" do
  scenario "After player 1 attacks player 2 has a turn." do
    sign_in_and_play
    first_turn
    click_button("Attack Dave")
    # expect(page).to have_content("Attack David")
  end
end
