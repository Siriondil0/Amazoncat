require 'rails_helper'

RSpec.describe "utilisateurs/show", type: :view do
  before(:each) do
    @utilisateur = assign(:utilisateur, Utilisateur.create!(
      :avatar => "Avatar"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Avatar/)
  end
end
