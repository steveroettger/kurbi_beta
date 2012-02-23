class PredefinedSymptoms < ActiveRecord::Base
  has_and_belongs_to_many :people
  has_and_belongs_to_many :symptom_categories
  has_many :patient_symptom_search
end
