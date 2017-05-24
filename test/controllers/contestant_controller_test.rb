require 'test_helper'

class ContestantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contestant_index_url
    assert_response :success
  end

  test "should get new" do
    get contestant_new_url
    assert_response :success
  end

  test "should get create" do
    get contestant_create_url
    assert_response :success
  end

  test "should get show" do
    get contestant_show_url
    assert_response :success
  end

  test "should get edit" do
    get contestant_edit_url
    assert_response :success
  end

  test "should get update" do
    get contestant_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contestant_destroy_url
    assert_response :success
  end

end
