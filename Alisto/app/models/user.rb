class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :fname,  presence: true, length: { maximum: 30 }

	validates :lname,  presence: true, length: { maximum: 35 }

	validates :username, presence: true, length: { maximum: 35},
						uniqueness: { case_sensitive: false }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, length: { maximum: 255 },
	                format: { with: VALID_EMAIL_REGEX },
	                uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	def init
	  self.reports_issued  ||= 0           #will set the default value only if it's nil
	end
end
