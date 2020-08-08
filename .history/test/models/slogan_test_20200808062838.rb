require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "slogan should save" do 
    @category = Category.new(first_name: "First Name", last_name: "Last Name", email: "example@yahoo.com", content: "Write something here more than, this should be  ")
  end

end
