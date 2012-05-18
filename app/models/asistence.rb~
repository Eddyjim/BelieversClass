class Asistence < ActiveRecord::Base
	validates :dateOfClass, :presence => true
	validates :leson, :presence => true		
	
	has_and_belongs_to_many	:students
	belongs_to	:group
end
