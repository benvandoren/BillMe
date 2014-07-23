class Customer < User
	belongs_to :admin
	has_many :projects
	has_many :billable, through: :projects
end
