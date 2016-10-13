feature "View hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_text("Laura: 60HP")
  end
end

feature "Reduce HP" do
  scenario "reduce HP by 10 for one attack" do
    sign_in_and_play
    click_button "Attack"
    click_link 'OK'
    expect(page).to have_text("Laura: 50HP")
  end

  scenario 'HP reaches 0' do
    sign_in_and_play
    11.times do
      click_button "Attack"
      click_link 'OK'
    end
    expect(page).to have_text("Laura lost the game")
  end
end
