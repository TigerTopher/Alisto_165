require 'test_helper'

class UserContactNumsControllerTest < ActionController::TestCase
  setup do
    @user_contact_num = user_contact_nums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_contact_nums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_contact_num" do
    assert_difference('UserContactNum.count') do
      post :create, user_contact_num: { num: @user_contact_num.num, user_id: @user_contact_num.user_id }
    end

    assert_redirected_to user_contact_num_path(assigns(:user_contact_num))
  end

  test "should show user_contact_num" do
    get :show, id: @user_contact_num
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_contact_num
    assert_response :success
  end

  test "should update user_contact_num" do
    patch :update, id: @user_contact_num, user_contact_num: { num: @user_contact_num.num, user_id: @user_contact_num.user_id }
    assert_redirected_to user_contact_num_path(assigns(:user_contact_num))
  end

  test "should destroy user_contact_num" do
    assert_difference('UserContactNum.count', -1) do
      delete :destroy, id: @user_contact_num
    end

    assert_redirected_to user_contact_nums_path
  end
end
