class Member < ActiveRecord::Base
	attr_accessible :email, :password, :password_confirmation
	attr_accessor :password
	
	before_save :encrypt_password
	
	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates :password, :length =>  { :within => 6..40 }
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,    :presence => true,
	                     :format   => { :with => email_regex },
	                     :uniqueness => { :case_sensitive => false }
	
	def self.authenticate(email, password)
	    member = find_by_email(email)
	    if member && member.password_hash == BCrypt::Engine.hash_secret(password, member.password_salt)
	      member
	    else
	      nil
	    end
	  end
	
	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.pasword_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end
end
