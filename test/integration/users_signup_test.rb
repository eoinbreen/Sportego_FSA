require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
      get signup_path
      assert_no_difference 'User.count' do
      post users_path, user: {  name:  "",
                                email: "user@invalid",
                                username:   "",
                                password:              "foo",
                                password_confirmation:              "foo",
                                country:   "",
                                dob: ''}
    end
    assert_template 'users/new'
  end
  
   test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "Example User",
                                            email: "user@example.com",
                                            username: "ExampleUser",
                                            password:              "password",
                                            password_confirmation:              "password",
                                            country: "Ireland",
                                            dob: '18-05-92'
                                            }
    end
    assert_template 'users/show'
    assert is_logged_in?
  end
end
