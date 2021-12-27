require 'test_helper'

class SkipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get skips_new_url
    assert_response :success
  end

  test "should get index" do
    get skips_index_url
    assert_response :success
  end

  test "should get show" do
    get skips_show_url
    assert_response :success
  end

  test "should get edit" do
    get skips_edit_url
    assert_response :success
  end

end
