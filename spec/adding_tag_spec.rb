feature 'creating links' do

  scenario 'I can add a single tag to the new links page' do
    visit '/links/new'
    fill_in 'url', with: 'www.google.com'
    fill_in 'title', with: 'Google'
    fill_in 'tags', with: 'my life'
    click_button 'submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('my life')
  end
end
