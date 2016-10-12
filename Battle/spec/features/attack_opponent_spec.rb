feature "Attack" do
  scenario "attack Player 2 and get a confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("Kyaw attacked Laura!")
  end
end
