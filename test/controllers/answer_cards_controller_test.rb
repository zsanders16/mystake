require 'test_helper'

class AnswerCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get answer_cards_index_url
    assert_response :success
  end

  test "should get new" do
    get answer_cards_new_url
    assert_response :success
  end

  test "should get edit" do
    get answer_cards_edit_url
    assert_response :success
  end

end
