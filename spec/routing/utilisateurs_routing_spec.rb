require "rails_helper"

RSpec.describe UtilisateursController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/utilisateurs").to route_to("utilisateurs#index")
    end

    it "routes to #new" do
      expect(:get => "/utilisateurs/new").to route_to("utilisateurs#new")
    end

    it "routes to #show" do
      expect(:get => "/utilisateurs/1").to route_to("utilisateurs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/utilisateurs/1/edit").to route_to("utilisateurs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/utilisateurs").to route_to("utilisateurs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/utilisateurs/1").to route_to("utilisateurs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/utilisateurs/1").to route_to("utilisateurs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/utilisateurs/1").to route_to("utilisateurs#destroy", :id => "1")
    end
  end
end
