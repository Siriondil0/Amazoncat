require 'rails_helper'

RSpec.describe "utilisateurs/index", type: :view do
  before(:each) do
    assign(:utilisateurs, [
      Utilisateur.create!(
        :avatar => "Avatar"
      ),
      Utilisateur.create!(
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of utilisateurs" do
    render
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end
