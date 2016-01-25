require 'test_helper'

class ServiceAdsControllerTest < ActionController::TestCase
  setup do
    @service_ad = service_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_ad" do
    assert_difference('ServiceAd.count') do
      post :create, service_ad: { active: @service_ad.active, description: @service_ad.description, price: @service_ad.price, service_id: @service_ad.service_id, title: @service_ad.title, user_id: @service_ad.user_id }
    end

    assert_redirected_to service_ad_path(assigns(:service_ad))
  end

  test "should show service_ad" do
    get :show, id: @service_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_ad
    assert_response :success
  end

  test "should update service_ad" do
    patch :update, id: @service_ad, service_ad: { active: @service_ad.active, description: @service_ad.description, price: @service_ad.price, service_id: @service_ad.service_id, title: @service_ad.title, user_id: @service_ad.user_id }
    assert_redirected_to service_ad_path(assigns(:service_ad))
  end

  test "should destroy service_ad" do
    assert_difference('ServiceAd.count', -1) do
      delete :destroy, id: @service_ad
    end

    assert_redirected_to service_ads_path
  end
end
