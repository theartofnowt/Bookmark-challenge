require 'web_helper'

feature 'User Signs up' do

  scenario 'I can sign up as a new user' do
    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, michaelgordon.brown1@gmail.com')
    expect(User.first.email).to eq('michaelgordon.brown1@gmail.com')
  end
end
