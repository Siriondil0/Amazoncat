require 'rails_helper'

RSpec.describe "utilisateurs/new", type: :view do
  before(:each) do
    assign(:utilisateur, Utilisateur.new(
      :avatar => "MyString"
    ))
  end

  it "renders new utilisateur form" do
    render

    assert_select "form[action=?][method=?]", utilisateurs_path, "post" do

      assert_select "input[name=?]", "utilisateur[avatar]"
    end
  end
end
