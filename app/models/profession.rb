class Profession < ActiveRecord::Base
	validates_presence_of :name,:description
end
