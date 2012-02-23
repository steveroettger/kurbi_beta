class Severity < ActiveRecord::Base
  has_one :predefined_symptoms
  has_one :patients
  has_one :daily_record
end
