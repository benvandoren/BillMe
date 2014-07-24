class User < ActiveRecord::Base
	before_save {|user| user.email = email.downcase}
	before_create { generate_token(:auth_token) }
	# validates :password, length: {minimum: 6, allow_nil: true}
	validates :password, length: { minimum: 6 }
	has_secure_password
	EMAIL_REGEX = /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
	validates :email, presence: true, format: {with: EMAIL_REGEX}, uniqueness:{case_sensitive: false}

	def send_password_reset
		generate_token(:password_reset_token)
		self.password_reset_sent_at = Time.zone.now
		save!(validate: false)
		UserMailer.password_reset(self).deliver
	end


	private

	def generate_token(column)
		begin
			self[column] = SecureRandom.urlsafe_base64
		end while User.exists?(column => self[column])
	end

	# def generate_token
	# 	self.auth_token = SecureRandom.urlsafe_base64
	# end
end
