class Assignment < ActiveRecord::Base
	validates :description, :presence => true
	validates :duedate, :presence => true

	belongs_to	:group
	has_many	:uploads
end
