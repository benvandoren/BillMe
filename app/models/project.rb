class Project < ActiveRecord::Base
	belongs_to :customer
	belongs_to :admin
	has_one :billable
end
