require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get leave_a_tip" do
    get pages_leave_a_tip_url
    assert_response :success
  end

  test "should get next_batch" do
    get pages_next_batch_url
    assert_response :success
  end
end
