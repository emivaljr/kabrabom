require 'test_helper'

class ProfessionalsControllerTest < ActionController::TestCase
  setup do
    @professional = professionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professional" do
    assert_difference('Professional.count') do
      post :create, professional: { active: @professional.active, address_id: @professional.address_id, integer: @professional.integer, integer: @professional.integer, integer: @professional.integer, integer: @professional.integer, integer: @professional.integer, nothing_on_record: @professional.nothing_on_record, phone_id: @professional.phone_id, user_id: @professional.user_id }
    end

    assert_redirected_to professional_path(assigns(:professional))
  end

  test "should show professional" do
    get :show, id: @professional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professional
    assert_response :success
  end

  test "should update professional" do
    patch :update, id: @professional, professional: { active: @professional.active, address_id: @professional.address_id, integer: @professional.integer, integer: @professional.integer, integer: @professional.integer, integer: @professional.integer, integer: @professional.integer, nothing_on_record: @professional.nothing_on_record, phone_id: @professional.phone_id, user_id: @professional.user_id }
    assert_redirected_to professional_path(assigns(:professional))
  end

  test "should destroy professional" do
    assert_difference('Professional.count', -1) do
      delete :destroy, id: @professional
    end

    assert_redirected_to professionals_path
  end
end
