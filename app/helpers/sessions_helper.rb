module SessionsHelper
	def sign_in_remember(user)
		cookies.permanent[:auth_token] = user.auth_token
		current_user = user
	end
	def sign_in(user)
		cookies[:auth_token] = user.auth_token
		current_user = user
	end	

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by_auth_token(cookies[:auth_token])
	end

	def current_user?(user)
		user == current_user
	end

	def signed_in_user
		unless signed_in?
			store_location
			redirect_to login_path, notice: "Please sign in."
		end
	end

	def admin_user
		unless is_admin?
			store_location
			redirect_to root_path, notice: "You are not validated to view this page."
		end
	end

	def is_admin?
		current_user.type == "Admin"
	end

	def sign_out
		current_user = nil
		cookies.delete(:auth_token)
	end

	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end

	def store_location
		session[:return_to] = request.fullpath
	end
end
