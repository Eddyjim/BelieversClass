class Upload < ActiveRecord::Base
	validates :file, :presence => true

	belongs_to :assignment
	belongs_to :student
end
