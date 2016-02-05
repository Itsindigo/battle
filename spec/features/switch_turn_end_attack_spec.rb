require 'capybara/rspec'
require 'capybara/dsl'

feature "Switch turn" do
  scenario "game start" do
    sign_in_and_play
    expect($game.turn.name).to eq ("Mittens")
  end

  scenario "After player 1 attacks" do
    sign_in_and_play
    click_button("Attack Dave")
    click_button("Return to homepage")
    expect(page).to have_content "Attack Mittens"
    # expect(@)
  end
end
