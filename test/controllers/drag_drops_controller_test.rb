require 'test_helper'

class DragDropsControllerTest < ActionController::TestCase
  setup do
    @drag_drop = drag_drops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drag_drops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drag_drop" do
    assert_difference('DragDrop.count') do
      post :create, drag_drop: { a: @drag_drop.a, atitle: @drag_drop.atitle, b: @drag_drop.b, btitle: @drag_drop.btitle, c: @drag_drop.c, ctitle: @drag_drop.ctitle, d: @drag_drop.d, dtitle: @drag_drop.dtitle, lesson: @drag_drop.lesson, statement: @drag_drop.statement }
    end

    assert_redirected_to drag_drop_path(assigns(:drag_drop))
  end

  test "should show drag_drop" do
    get :show, id: @drag_drop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drag_drop
    assert_response :success
  end

  test "should update drag_drop" do
    patch :update, id: @drag_drop, drag_drop: { a: @drag_drop.a, atitle: @drag_drop.atitle, b: @drag_drop.b, btitle: @drag_drop.btitle, c: @drag_drop.c, ctitle: @drag_drop.ctitle, d: @drag_drop.d, dtitle: @drag_drop.dtitle, lesson: @drag_drop.lesson, statement: @drag_drop.statement }
    assert_redirected_to drag_drop_path(assigns(:drag_drop))
  end

  test "should destroy drag_drop" do
    assert_difference('DragDrop.count', -1) do
      delete :destroy, id: @drag_drop
    end

    assert_redirected_to drag_drops_path
  end
end
