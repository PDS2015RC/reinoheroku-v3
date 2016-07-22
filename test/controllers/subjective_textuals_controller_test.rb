require 'test_helper'

class SubjectiveTextualsControllerTest < ActionController::TestCase
  setup do
    @subjective_textual = subjective_textuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjective_textuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subjective_textual" do
    assert_difference('SubjectiveTextual.count') do
      post :create, subjective_textual: { answer: @subjective_textual.answer, lesson: @subjective_textual.lesson, statement: @subjective_textual.statement }
    end

    assert_redirected_to subjective_textual_path(assigns(:subjective_textual))
  end

  test "should show subjective_textual" do
    get :show, id: @subjective_textual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subjective_textual
    assert_response :success
  end

  test "should update subjective_textual" do
    patch :update, id: @subjective_textual, subjective_textual: { answer: @subjective_textual.answer, lesson: @subjective_textual.lesson, statement: @subjective_textual.statement }
    assert_redirected_to subjective_textual_path(assigns(:subjective_textual))
  end

  test "should destroy subjective_textual" do
    assert_difference('SubjectiveTextual.count', -1) do
      delete :destroy, id: @subjective_textual
    end

    assert_redirected_to subjective_textuals_path
  end
end
