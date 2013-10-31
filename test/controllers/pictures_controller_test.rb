require "test_helper"

class PicturesControllerTest < ActionController::TestCase

  def setup
    @picture = pictures(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pictures)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Picture.count') do
      post :create, picture: {  }
    end

    assert_redirected_to picture_path(assigns(:picture))
  end

  def test_show
    get :show, id: @picture
    assert_response :success
  end

  def test_edit
    get :edit, id: @picture
    assert_response :success
  end

  def test_update
    put :update, id: @picture, picture: {  }
    assert_redirected_to picture_path(assigns(:picture))
  end

  def test_destroy
    assert_difference('Picture.count', -1) do
      delete :destroy, id: @picture
    end

    assert_redirected_to pictures_path
  end
end
