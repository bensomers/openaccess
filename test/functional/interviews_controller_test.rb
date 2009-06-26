require 'test_helper'

class InterviewsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Interviews.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Interviews.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Interviews.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to interviews_url(assigns(:interviews))
  end
  
  def test_edit
    get :edit, :id => Interviews.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Interviews.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Interviews.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Interviews.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Interviews.first
    assert_redirected_to interviews_url(assigns(:interviews))
  end
  
  def test_destroy
    interviews = Interviews.first
    delete :destroy, :id => interviews
    assert_redirected_to interviews_url
    assert !Interviews.exists?(interviews.id)
  end
end
