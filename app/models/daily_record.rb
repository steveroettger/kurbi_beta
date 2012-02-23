class DailyRecord < ActiveRecord::Base
	has_and_belongs_to_many :patients 
	has_one :days
	has_one :severity
end
