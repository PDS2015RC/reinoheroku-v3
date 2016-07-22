require 'test_helper'

class ObjectiveImagesControllerTest < ActionController::TestCase
  setup do
    @objective_image = objective_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objective_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objective_image" do
    assert_difference('ObjectiveImage.count') do
      post :create, objective_image: { aimg: @objective_image.aimg, bimg: @objective_image.bimg, cimg: @objective_image.cimg, lesson: @objective_image.lesson, statement: @objective_image.statement }
    end

    assert_redirected_to objective_image_path(assigns(:objective_image))
  end

  test "should show objective_image" do
    get :show, id: @objective_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objective_image
    assert_response :success
  end

  test "should update objective_image" do
    patch :update, id: @objective_image, objective_image: { aimg: @objective_image.aimg, bimg: @objective_image.bimg, cimg: @objective_image.cimg, lesson: @objective_image.lesson, statement: @objective_image.statement }
    assert_redirected_to objective_image_path(assigns(:objective_image))
  end

  test "should destroy objective_image" do
    assert_difference('ObjectiveImage.count', -1) do
      delete :destroy, id: @objective_image
    end

    assert_redirected_to objective_images_path
  end
end
