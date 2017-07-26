feature 'creating links' do

  scenario 'I can add new links on the new links page' do
    visit '/links/new'
    fill_in 'url', with: 'www.google.com'
    fill_in 'title', with: 'Google'
    click_button 'submit'
    # within 'ul#links' do
    expect(page).to have_content('www.google.com')
  end
  end
