require 'test_helper'

class HelpfilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helpfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helpfile" do
    assert_difference('Helpfile.count') do
      post :create, :helpfile => { }
    end

    assert_redirected_to helpfile_path(assigns(:helpfile))
  end

  test "should show helpfile" do
    get :show, :id => helpfiles(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => helpfiles(:one).id
    assert_response :success
  end

  test "should update helpfile" do
    put :update, :id => helpfiles(:one).id, :helpfile => { }
    assert_redirected_to helpfile_path(assigns(:helpfile))
  end

  test "should destroy helpfile" do
    assert_difference('Helpfile.count', -1) do
      delete :destroy, :id => helpfiles(:one).id
    end

    assert_redirected_to helpfiles_path
  end
end
