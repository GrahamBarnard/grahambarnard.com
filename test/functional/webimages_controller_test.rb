require 'test_helper'

class WebimagesControllerTest < ActionController::TestCase
  setup do
    @webimage = webimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webimage" do
    assert_difference('Webimage.count') do
      post :create, webimage: { caption: @webimage.caption, imageorder: @webimage.imageorder, title: @webimage.title, url: @webimage.url, website_id: @webimage.website_id }
    end

    assert_redirected_to webimage_path(assigns(:webimage))
  end

  test "should show webimage" do
    get :show, id: @webimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webimage
    assert_response :success
  end

  test "should update webimage" do
    put :update, id: @webimage, webimage: { caption: @webimage.caption, imageorder: @webimage.imageorder, title: @webimage.title, url: @webimage.url, website_id: @webimage.website_id }
    assert_redirected_to webimage_path(assigns(:webimage))
  end

  test "should destroy webimage" do
    assert_difference('Webimage.count', -1) do
      delete :destroy, id: @webimage
    end

    assert_redirected_to webimages_path
  end
end
