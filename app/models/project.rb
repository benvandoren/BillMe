class Project < ActiveRecord::Base
	belongs_to :customer
	belongs_to :admin
	has_one :billable

	validates :client_name, presence: true
	validates :project_name, presence: true
	validates :rate, presence: true

	# default_scope order: "projects.created_at DESC"

end
