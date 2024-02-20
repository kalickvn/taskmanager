require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save Task without title" do
    article = Task.new
    user = admin_users(:admin)
    article.admin_user_id = user.id
    assert_not article.save
  end

end
