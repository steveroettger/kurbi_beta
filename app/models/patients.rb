class Patients < ActiveRecord::Base
	has_one :people
	has_many :patient_symptom_search
	has_many :user_defined_symptoms
end
