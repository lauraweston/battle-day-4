feature "Entering Players" do
  scenario "Players enter their names, submit and see them" do
    sign_in_and_play
    expect(page).to have_text("Kyaw vs. Laura")
  end
end
