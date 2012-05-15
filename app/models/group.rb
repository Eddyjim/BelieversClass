class Group < ActiveRecord::Base
	has_many 		:students
	has_and_belongs_to_one	:teacher
	has_many		:assignments
end
