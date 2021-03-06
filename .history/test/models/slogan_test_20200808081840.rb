require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  d

  test "should not save slogan without first_name" do 
    @slogan = Slogan.new(last_name: "Last Name", email: "example@yahoo.com", content: "Write something here")
    assert_not(@slogan.save,["first name must be present"])
  end

  test "should not save slogan without last_name" do 
    @slogan = Slogan.new(first_name: "First Name", email: "example@yahoo.com", content: "Write something here")
    assert_not(@slogan.save, ["last name must be present"])
  end


  test "should not save slogan without an email" do 
    @slogan = Slogan.new(first_name: "First Name", last_name: "Last Name", content: "Write something here")
    assert_not(@slogan.save,["email must be present"])
  end

  test "should not save slogan without a content" do
    @slogan = Slogan.new(first_name: "First Name", last_name: "Last Name", email: "example@yahoo.com")
    assert_not(@slogan.save,["content must be present"])
  end

  test "email should be unique" do
    @slogan.save
    @slogan2 = Slogan.new(email: "example@yahoo.com")
    assert_not @slogan2.valid?
  end

  test "content should not be too long" do

  end

  test "content should not be too short" do
    
  end

  test "content should be unique" do
    
  end


end
