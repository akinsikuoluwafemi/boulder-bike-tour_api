require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "slogan should save" do 
    @category = Category.new(first_name: "F")
  end

end
