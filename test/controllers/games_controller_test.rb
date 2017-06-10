require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get games_Index_url
    assert_response :success
  end

end
