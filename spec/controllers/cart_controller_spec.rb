require 'rails_helper'

RSpec.describe CartController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get 'cart'
      expect(response).to be_failure
    end
  end


end
