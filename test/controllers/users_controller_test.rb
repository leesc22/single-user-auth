require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    log_in_as(@user)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    delete user_url(@user)
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    delete user_url(@user)
    assert_difference('User.count') do
      post users_url, params: { user: { email: @user.email, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to signup_url
  end
end
