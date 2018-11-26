require 'rails_helper'
require 'rails/all'

RSpec.describe User, type: :model do
  context "Registration" do
    it 'is database authenticable' do
      user = User.create(
        username: 'testtest',
        email: 'test@example.com', 
        password: 'password123',
        password_confirmation: 'password123'
      )
      expect(user.valid_password?('password123')).to be_truthy
    end

    
  end
end
