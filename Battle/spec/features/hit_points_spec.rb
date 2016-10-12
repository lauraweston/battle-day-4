feature "player hit points" do
  scenario "Player 1 can see Player 2's hit points" do
    visit "/"
    fill_in "player_1_name", :with => "Kyaw"
    fill_in "player_2_name", :with => "Laura"
    click_button "Submit"
    within "p" do
    expect(page).to have_text("Laura (100/100 HP)")
    end
  end
end
