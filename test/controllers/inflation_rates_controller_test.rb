require 'test_helper'

class InflationRatesControllerTest < ActionController::TestCase
  setup do
    @inflation_rate = inflation_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inflation_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inflation_rate" do
    assert_difference('InflationRate.count') do
      post :create, inflation_rate: { month: @inflation_rate.month, percent: @inflation_rate.percent, year: @inflation_rate.year }
    end

    assert_redirected_to inflation_rate_path(assigns(:inflation_rate))
  end

  test "should show inflation_rate" do
    get :show, id: @inflation_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inflation_rate
    assert_response :success
  end

  test "should update inflation_rate" do
    patch :update, id: @inflation_rate, inflation_rate: { month: @inflation_rate.month, percent: @inflation_rate.percent, year: @inflation_rate.year }
    assert_redirected_to inflation_rate_path(assigns(:inflation_rate))
  end

  test "should destroy inflation_rate" do
    assert_difference('InflationRate.count', -1) do
      delete :destroy, id: @inflation_rate
    end

    assert_redirected_to inflation_rates_path
  end
end
