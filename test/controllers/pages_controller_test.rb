require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Sportego Fantasy Sports App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Sportego Fantasy Sports App"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Sportego Fantasy Sports App"
  end
  
   test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Sportego Fantasy Sports App"
  end

end
