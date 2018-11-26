class TestController < ApplicationController
  def test
  	@item = Item.all
  end
end
