require 'test_helper'

class DinnerToursControllerTest < ActionController::TestCase
  setup do
    @dinner_tour = dinner_tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinner_tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dinner_tour" do
    assert_difference('DinnerTour.count') do
      post :create, dinner_tour: { notes: @dinner_tour.notes, title: @dinner_tour.title }
    end

    assert_redirected_to dinner_tour_path(assigns(:dinner_tour))
  end

  test "should show dinner_tour" do
    get :show, id: @dinner_tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dinner_tour
    assert_response :success
  end

  test "should update dinner_tour" do
    patch :update, id: @dinner_tour, dinner_tour: { notes: @dinner_tour.notes, title: @dinner_tour.title }
    assert_redirected_to dinner_tour_path(assigns(:dinner_tour))
  end

  test "should destroy dinner_tour" do
    assert_difference('DinnerTour.count', -1) do
      delete :destroy, id: @dinner_tour
    end

    assert_redirected_to dinner_tours_path
  end
end
