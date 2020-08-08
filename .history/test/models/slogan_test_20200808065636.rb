require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save slogan without first_name" do 
    @slogan = Slogan.new(last_name: "Last Name", email: "example@yahoo.com", content: "Write something here more than, this should be more than 105 characters")
    assert_not @slogan.save
  end

  test "should not save slogan without last_name"

end
