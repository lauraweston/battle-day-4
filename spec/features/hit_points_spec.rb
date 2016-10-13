feature "View hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_text("Laura: 60HP")
  end
end

feature "Reduce HP" do
  scenario "reduce HP by 6 for one attack" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(1..10).and_return 6
    click_button "Attack"
    click_link 'OK'
    expect(page).to have_text("Laura: 54HP")
  end

  scenario 'HP reaches 0' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(1..10).and_return 10
    11.times do
      click_button "Attack"
      click_link 'OK'
    end
    expect(page).to have_text("Laura lost the game")
  end
end
