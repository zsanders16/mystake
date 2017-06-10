require 'test_helper'

class SentenceCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sentence_cards_index_url
    assert_response :success
  end

  test "should get new" do
    get sentence_cards_new_url
    assert_response :success
  end

  test "should get edit" do
    get sentence_cards_edit_url
    assert_response :success
  end

end
