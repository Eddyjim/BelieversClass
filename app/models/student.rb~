class Student < ActiveRecord::Base
	validates :uname, :presence => true
	validates :uname, :uniqueness => true
	validates :name, :presence => true
	validates :lastname, :presence => true
	validates :password, :presence => true
	validates :cc, :presence => true
	validates :cc, :uniqueness => true
	validates :cc, :numericality => true

	belongs_to :group
	has_many :uploads
	has_and_belongs_to_many :asistences
end
