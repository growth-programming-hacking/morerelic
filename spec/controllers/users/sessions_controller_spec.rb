require 'rails_helper'

RSpec.describe Users::SessionsController do
  let!(:user) { FactoryGirl.create(:user) }
  describe 'GET /sign_in' do
    it 'should success' do
      visit '/sign_in'
      response.status.should be(200)
    end
  end

  describe 'POST /sign_in' do
    it 'should success when user exists' do
      post :sign_in
    end
    it 'should failure when user not exists' do
    end
  end
end
