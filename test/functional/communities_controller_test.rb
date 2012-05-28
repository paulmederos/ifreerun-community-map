require 'test_helper'

class CommunitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Community.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Community.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Community.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to community_url(assigns(:community))
  end

  def test_edit
    get :edit, :id => Community.first
    assert_template 'edit'
  end

  def test_update_invalid
    Community.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Community.first
    assert_template 'edit'
  end

  def test_update_valid
    Community.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Community.first
    assert_redirected_to community_url(assigns(:community))
  end

  def test_destroy
    community = Community.first
    delete :destroy, :id => community
    assert_redirected_to communities_url
    assert !Community.exists?(community.id)
  end
end
