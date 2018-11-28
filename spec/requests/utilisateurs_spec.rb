require 'rails_helper'

RSpec.describe "Utilisateurs", type: :request do
  describe "GET /utilisateurs" do
    it "works! (now write some real specs)" do
      get utilisateurs_path
      expect(response).to have_http_status(200)
    end
  end
end
