

def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,   with: 'michaelgordon.brown1@gmail.com'
  fill_in :password, with: 'apples!'
  click_button 'Sign up'
end
