class Billable < ActiveRecord::Base
	belongs_to :project
	belongs_to :customer
end
