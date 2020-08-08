require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "slogan should save" do 
    @category = Category.new(name: "S")
  end

end
