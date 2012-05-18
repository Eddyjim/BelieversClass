class Group < ActiveRecord::Base
	validates :level, :presence => true

	has_many 		:students
	belongs_to		:teacher
	has_many		:assignments
	has_many		:asistences
end
