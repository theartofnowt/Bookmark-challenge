feature 'creating links' do

  scenario 'I can add a single tag to the new links page' do
    visit '/links/new'
    fill_in 'url', with: 'www.google.com'
    fill_in 'title', with: 'Google'
    fill_in 'tags', with: 'life'
    click_button 'submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('life')
  end

  scenario 'i can add multiple tags to the new links page' do
    visit '/links/new'
    fill_in 'url', with: 'www.google.com'
    fill_in 'title', with: 'Google'
    fill_in 'tags', with: 'life ruby'
    click_button 'submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('life', 'ruby')
  end
end
