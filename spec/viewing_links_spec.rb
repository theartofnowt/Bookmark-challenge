feature 'Viewing links' do
  scenario 'I can see existing links on the links page' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/links'
    within 'ul#links' do
    expect(page).to have_content('Makers Academy')
    end
  end

  scenario 'we can filter link by tag' do
    Link.create(url: 'http://www.zombo.com', title: 'This is Zombocom', tags: [Tag.first_or_create(name: 'education')])
    visit '/tags/education'
    expect(page.status_code).to eq 200
    within 'ul#links' do
    expect(page).to have_content('This is Zombocom')
    end
  end

end
