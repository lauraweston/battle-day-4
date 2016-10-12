feature "View hit points" do
  scenario "see Player 2 hit points" do
    visit "/"
    fill_in "player_1_name", :with => "Kyaw"
    fill_in "player_2_name", :with => "Laura"
    click_button "Submit"
    expect(page).to have_text("Laura: 100HP")
  end
end
