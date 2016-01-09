class Address < ActiveRecord::Base
	validates_presence_of :main,:cep,:city,:district,:num,:state
	belongs_to :user

end
