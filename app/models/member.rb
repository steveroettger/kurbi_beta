class Member < ActiveRecord::Base
	  has_one :people, :dependent => :destroy
	  has_many :patient_symptom_search
	  has_many :user_defined_symptoms
	  
	  	  
	  attr_accessible :email, :password, :password_confirmation
	  
	  attr_accessor :password
	  before_save :encrypt_password
	  
	  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	  validates :email,    :presence => true,
	                       :format   => { :with => email_regex },
	                       :uniqueness => { :case_sensitive => false }
	  validates :password, :presence => true,
	  					   :confirmation => true,
	  					   :length => { :within => 6..40 }
	  					   	  
	  def self.authenticate(email, password)
	    member = find_by_email(email)
	    if member && member.password_hash == BCrypt::Engine.hash_secret(password, member.password_salt)
	      member
	    else
	      nil
	    end
	  end
	  
	  def self.authenticate_with_salt(id, cookie_salt)
	  	member = find_by_id(id)
	  	(member && member.password_salt == cookie_salt) ? member : nil
	  end
	  
	  def encrypt_password
	    if password.present?
	      self.password_salt = BCrypt::Engine.generate_salt
	      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	    end
	  end
end
