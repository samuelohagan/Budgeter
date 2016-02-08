require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
	test "valid signup information" do
	get register_path
	 assert_difference 'User.count', 1 do
	  	post_via_redirect users_path, user: {
  		email: "user@example.com",
  		password: "examplepassword",
  		password_confirmation: "examplepassword"
  	}
  end
  	assert_template 'users/show'
  end
end
