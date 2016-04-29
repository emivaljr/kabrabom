require 'test_helper'

class ServiceProfessionalFeedbacksControllerTest < ActionController::TestCase
  setup do
    @service_professional_feedback = service_professional_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_professional_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_professional_feedback" do
    assert_difference('ServiceProfessionalFeedback.count') do
      post :create, service_professional_feedback: { feedback: @service_professional_feedback.feedback, professional_service_id: @service_professional_feedback.professional_service_id, quantity_stars: @service_professional_feedback.quantity_stars, user_id: @service_professional_feedback.user_id }
    end

    assert_redirected_to service_professional_feedback_path(assigns(:service_professional_feedback))
  end

  test "should show service_professional_feedback" do
    get :show, id: @service_professional_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_professional_feedback
    assert_response :success
  end

  test "should update service_professional_feedback" do
    patch :update, id: @service_professional_feedback, service_professional_feedback: { feedback: @service_professional_feedback.feedback, professional_service_id: @service_professional_feedback.professional_service_id, quantity_stars: @service_professional_feedback.quantity_stars, user_id: @service_professional_feedback.user_id }
    assert_redirected_to service_professional_feedback_path(assigns(:service_professional_feedback))
  end

  test "should destroy service_professional_feedback" do
    assert_difference('ServiceProfessionalFeedback.count', -1) do
      delete :destroy, id: @service_professional_feedback
    end

    assert_redirected_to service_professional_feedbacks_path
  end
end
