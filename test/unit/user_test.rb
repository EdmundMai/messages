require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
  	@user = User.create(:name => "ed")
  end

  test "user is created" do
    assert @user.valid?
  end

 test "user has sent messages" do
  	@user.sent_msgs << Message.create(:content => "hi")
  	assert_equal 1, @user.sent_msgs.count
  end
end
