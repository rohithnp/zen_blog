require 'test_helper'

class ZenPostsControllerTest < ActionController::TestCase
  setup do
    @zen_post = zen_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zen_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zen_post" do
    assert_difference('ZenPost.count') do
      post :create, zen_post: @zen_post.attributes
    end

    assert_redirected_to zen_post_path(assigns(:zen_post))
  end

  test "should show zen_post" do
    get :show, id: @zen_post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zen_post.to_param
    assert_response :success
  end

  test "should update zen_post" do
    put :update, id: @zen_post.to_param, zen_post: @zen_post.attributes
    assert_redirected_to zen_post_path(assigns(:zen_post))
  end

  test "should destroy zen_post" do
    assert_difference('ZenPost.count', -1) do
      delete :destroy, id: @zen_post.to_param
    end

    assert_redirected_to zen_posts_path
  end
end
