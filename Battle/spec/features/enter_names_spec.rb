require "spec_helper"

feature "Entering Players" do
  scenario "Players enter their names, submit and see them" do
    visit "/"
    fill_in "player_1_name", :with => "Kyaw"
    fill_in "player_2_name", :with => "Laura"
    click_button "Submit"
    expect(page).to have_text("(Kyaw) vs. (Laura)")
  end
end
