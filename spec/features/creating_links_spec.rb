feature 'user adds new link' do
  scenario 'user adds first link' do
    visit '/links/new'
    fill_in :url, with: 'https://en.wikipedia.org/wiki/Interfaith_Alliance'
    fill_in :title, with: 'Interfaith Alliance'
    click_button 'Submit'

    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content('Interfaith Alliance')
    end
  end
end
