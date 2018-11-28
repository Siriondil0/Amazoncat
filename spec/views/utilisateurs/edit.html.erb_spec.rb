require 'rails_helper'

RSpec.describe "utilisateurs/edit", type: :view do
  before(:each) do
    @utilisateur = assign(:utilisateur, Utilisateur.create!(
      :avatar => "MyString"
    ))
  end

  it "renders the edit utilisateur form" do
    render

    assert_select "form[action=?][method=?]", utilisateur_path(@utilisateur), "post" do

      assert_select "input[name=?]", "utilisateur[avatar]"
    end
  end
end
