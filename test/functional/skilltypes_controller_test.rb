require 'test_helper'

class SkilltypesControllerTest < ActionController::TestCase
  setup do
    @skilltype = skilltypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skilltypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skilltype" do
    assert_difference('Skilltype.count') do
      post :create, skilltype: { name: @skilltype.name }
    end

    assert_redirected_to skilltype_path(assigns(:skilltype))
  end

  test "should show skilltype" do
    get :show, id: @skilltype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skilltype
    assert_response :success
  end

  test "should update skilltype" do
    put :update, id: @skilltype, skilltype: { name: @skilltype.name }
    assert_redirected_to skilltype_path(assigns(:skilltype))
  end

  test "should destroy skilltype" do
    assert_difference('Skilltype.count', -1) do
      delete :destroy, id: @skilltype
    end

    assert_redirected_to skilltypes_path
  end
end
