require 'test_helper'

class AdvertisersControllerTest < ActionController::TestCase
  setup do
    @advertiser = advertisers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertiser" do
    assert_difference('Advertiser.count') do
      post :create, advertiser: { cid: @advertiser.cid, issue: @advertiser.issue, name: @advertiser.name, points: @advertiser.points, security: @advertiser.security }
    end

    assert_redirected_to advertiser_path(assigns(:advertiser))
  end

  test "should show advertiser" do
    get :show, id: @advertiser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertiser
    assert_response :success
  end

  test "should update advertiser" do
    patch :update, id: @advertiser, advertiser: { cid: @advertiser.cid, issue: @advertiser.issue, name: @advertiser.name, points: @advertiser.points, security: @advertiser.security }
    assert_redirected_to advertiser_path(assigns(:advertiser))
  end

  test "should destroy advertiser" do
    assert_difference('Advertiser.count', -1) do
      delete :destroy, id: @advertiser
    end

    assert_redirected_to advertisers_path
  end
end
