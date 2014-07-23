class Customer < User
	has_many :projects
	has_many :billable, through: :projects
end
