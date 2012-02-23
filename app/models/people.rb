class People < ActiveRecord::Base
  has_and_belongs_to_many :actions
  has_and_belongs_to_many :addresses
  has_and_belongs_to_many :predefined_symptoms
  has_and_belongs_to_many :disease_profiles
  has_and_belongs_to_many :roles
end
