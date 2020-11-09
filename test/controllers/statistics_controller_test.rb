require 'test_helper'

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get statistics_create_url
    assert_response :success
  end

  test "should get destroy" do
    get statistics_destroy_url
    assert_response :success
  end

end
