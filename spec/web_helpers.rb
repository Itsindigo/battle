def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def first_turn
  click_button('Attack Mittens')
  expect(page).to have_content 'Dave attacked Mittens'
  click_button("Return to homepage")
end
