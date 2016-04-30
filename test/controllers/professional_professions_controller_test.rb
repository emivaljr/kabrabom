require 'test_helper'

class ProfessionalProfessionsControllerTest < ActionController::TestCase
  setup do
    @professional_profession = professional_professions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professional_professions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professional_profession" do
    assert_difference('ProfessionalProfession.count') do
      post :create, professional_profession: { profession_id: @professional_profession.profession_id, professional_id: @professional_profession.professional_id }
    end

    assert_redirected_to professional_profession_path(assigns(:professional_profession))
  end

  test "should show professional_profession" do
    get :show, id: @professional_profession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professional_profession
    assert_response :success
  end

  test "should update professional_profession" do
    patch :update, id: @professional_profession, professional_profession: { profession_id: @professional_profession.profession_id, professional_id: @professional_profession.professional_id }
    assert_redirected_to professional_profession_path(assigns(:professional_profession))
  end

  test "should destroy professional_profession" do
    assert_difference('ProfessionalProfession.count', -1) do
      delete :destroy, id: @professional_profession
    end

    assert_redirected_to professional_professions_path
  end
end
