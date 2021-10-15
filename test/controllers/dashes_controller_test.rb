require 'test_helper'

class DashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dash = dashes(:one)
  end

  test "should get index" do
    get dashes_url
    assert_response :success
  end

  test "should get new" do
    get new_dash_url
    assert_response :success
  end

  test "should create dash" do
    assert_difference('Dash.count') do
      post dashes_url, params: { dash: { desc: @dash.desc, no: @dash.no } }
    end

    assert_redirected_to dash_url(Dash.last)
  end

  test "should show dash" do
    get dash_url(@dash)
    assert_response :success
  end

  test "should get edit" do
    get edit_dash_url(@dash)
    assert_response :success
  end

  test "should update dash" do
    patch dash_url(@dash), params: { dash: { desc: @dash.desc, no: @dash.no } }
    assert_redirected_to dash_url(@dash)
  end

  test "should destroy dash" do
    assert_difference('Dash.count', -1) do
      delete dash_url(@dash)
    end

    assert_redirected_to dashes_url
  end
end
