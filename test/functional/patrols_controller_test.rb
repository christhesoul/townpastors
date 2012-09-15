require 'test_helper'

class PatrolsControllerTest < ActionController::TestCase
  setup do
    @patrol = patrols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patrols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patrol" do
    assert_difference('Patrol.count') do
      post :create, patrol: @patrol.attributes
    end

    assert_redirected_to patrol_path(assigns(:patrol))
  end

  test "should show patrol" do
    get :show, id: @patrol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patrol
    assert_response :success
  end

  test "should update patrol" do
    put :update, id: @patrol, patrol: @patrol.attributes
    assert_redirected_to patrol_path(assigns(:patrol))
  end

  test "should destroy patrol" do
    assert_difference('Patrol.count', -1) do
      delete :destroy, id: @patrol
    end

    assert_redirected_to patrols_path
  end
end
