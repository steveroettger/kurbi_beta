class Employees < ActiveRecord::Base
	has_one :persons
end
