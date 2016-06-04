require 'rails_helper'

RSpec.describe "user signin", type: :feature do
  before :each do
    User.create(email: 'user@example.com', password: 'password')
  end

  describe 'sign_in' do
    it 'should has sign_in button' do
      visit '/users/sign_in'
      within('#session') do
        fill_in 'user[email]', with: 'user@example.com'
        fill_in 'user[password]', with: 'password'
      end
    end
  end
end
