class SymptomCategories < ActiveRecord::Base
  has_and_belongs_to_many :predefined_symptoms
end
