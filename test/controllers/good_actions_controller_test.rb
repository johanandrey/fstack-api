require 'test_helper'

class GoodActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good_action = good_actions(:one)
  end

  test "should get index" do
    get good_actions_url, as: :json
    assert_response :success
  end

  test "should create good_action" do
    assert_difference('GoodAction.count') do
      post good_actions_url, params: { good_action: { description: @good_action.description, receiver_id: @good_action.receiver_id, score: @good_action.score, sender_id: @good_action.sender_id } }, as: :json
    end

    assert_response 201
  end

  test "should show good_action" do
    get good_action_url(@good_action), as: :json
    assert_response :success
  end

  test "should update good_action" do
    patch good_action_url(@good_action), params: { good_action: { description: @good_action.description, receiver_id: @good_action.receiver_id, score: @good_action.score, sender_id: @good_action.sender_id } }, as: :json
    assert_response 200
  end

  test "should destroy good_action" do
    assert_difference('GoodAction.count', -1) do
      delete good_action_url(@good_action), as: :json
    end

    assert_response 204
  end
end
