class Doctors < ActiveRecord::Base
	has_one :persons
end
