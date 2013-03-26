require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { last_access: @user.last_access, last_update: @user.last_update, mail: @user.mail, metadata: @user.metadata, name: @user.name, password: @user.password, status: @user.status, tagline: @user.tagline, timezone: @user.timezone, uid: @user.uid, user_roles: @user.user_roles }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { last_access: @user.last_access, last_update: @user.last_update, mail: @user.mail, metadata: @user.metadata, name: @user.name, password: @user.password, status: @user.status, tagline: @user.tagline, timezone: @user.timezone, uid: @user.uid, user_roles: @user.user_roles }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
