class People < ActiveRecord::Base
	attr_accessible 
		:first_name,
		:last_name,
		:birthday,
		:location, 
		:race, 
		:sex,
		:bio,
		:first_occurrence,
		:diagnosed, 
		:condition,
		:doctor, 
		:medications, 
		
  has_and_belongs_to_many :actions
  has_and_belongs_to_many :addresses
  has_and_belongs_to_many :predefined_symptoms
  has_and_belongs_to_many :disease_profiles
  has_and_belongs_to_many :roles
  belongs_to :member
  
  
end
