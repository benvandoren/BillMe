def admin_login
	visit login_path
	fill_in "Email", with: "ben@ben.com"
	fill_in "Password", with: "foobar"
	click_button "Log in"
	cookies[:auth_token] = user.auth_token
end
