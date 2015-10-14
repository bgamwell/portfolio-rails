require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get title" do
    get :title
    assert_response :success
  end

  test "should get author" do
    get :author
    assert_response :success
  end

  test "should get date_published" do
    get :date_published
    assert_response :success
  end

  test "should get URL" do
    get :URL
    assert_response :success
  end

  test "should get synopsis:text" do
    get :synopsis:text
    assert_response :success
  end

  test "should get image" do
    get :image
    assert_response :success
  end

end
