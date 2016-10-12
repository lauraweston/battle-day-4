feature "View hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_text("Laura: 100HP")
  end
end

feature "Reduce HP" do
  scenario "reduce HP by 10 for one attack" do
    sign_in_and_play
    click_button "Attack"
    click_link 'OK'
    expect(page).to have_text("Laura: 90HP")
  end
end
