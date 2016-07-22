require 'test_helper'

class ObjectiveTextualsControllerTest < ActionController::TestCase
  setup do
    @objective_textual = objective_textuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objective_textuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objective_textual" do
    assert_difference('ObjectiveTextual.count') do
      post :create, objective_textual: { a: @objective_textual.a, b: @objective_textual.b, c: @objective_textual.c, d: @objective_textual.d, lesson: @objective_textual.lesson, statement: @objective_textual.statement }
    end

    assert_redirected_to objective_textual_path(assigns(:objective_textual))
  end

  test "should show objective_textual" do
    get :show, id: @objective_textual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objective_textual
    assert_response :success
  end

  test "should update objective_textual" do
    patch :update, id: @objective_textual, objective_textual: { a: @objective_textual.a, b: @objective_textual.b, c: @objective_textual.c, d: @objective_textual.d, lesson: @objective_textual.lesson, statement: @objective_textual.statement }
    assert_redirected_to objective_textual_path(assigns(:objective_textual))
  end

  test "should destroy objective_textual" do
    assert_difference('ObjectiveTextual.count', -1) do
      delete :destroy, id: @objective_textual
    end

    assert_redirected_to objective_textuals_path
  end
end
