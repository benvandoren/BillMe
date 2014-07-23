class Admin < User
	has_many :projects
	has_many :customers, through: :projects
end
