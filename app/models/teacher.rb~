class Teacher < ActiveRecord::Base
	validates :name, :presence => true
	validates :uname, :presence => true
	validates :uname, :uniqueness => true
	validates :lastname, :presence => true
	validates :password, :presence => true

	has_one	:group
end
