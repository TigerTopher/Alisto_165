require 'test_helper'

class SyndicatesControllerTest < ActionController::TestCase
  setup do
    @syndicate = syndicates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syndicates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syndicate" do
    assert_difference('Syndicate.count') do
      post :create, syndicate: { name: @syndicate.name, overview: @syndicate.overview, report_count: @syndicate.report_count }
    end

    assert_redirected_to syndicate_path(assigns(:syndicate))
  end

  test "should show syndicate" do
    get :show, id: @syndicate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syndicate
    assert_response :success
  end

  test "should update syndicate" do
    patch :update, id: @syndicate, syndicate: { name: @syndicate.name, overview: @syndicate.overview, report_count: @syndicate.report_count }
    assert_redirected_to syndicate_path(assigns(:syndicate))
  end

  test "should destroy syndicate" do
    assert_difference('Syndicate.count', -1) do
      delete :destroy, id: @syndicate
    end

    assert_redirected_to syndicates_path
  end
end
