class User < ActiveRecord::Base
	 has_many :addresses, :dependent => :destroy
	 has_many :phones, :dependent => :destroy
	 accepts_nested_attributes_for :addresses  , :allow_destroy => true
	 accepts_nested_attributes_for :phones  , :allow_destroy => true
	 validates :password, :presence =>true, :confirmation =>true
  	 validates_confirmation_of :password
  	 validates :email, :presence =>true, :confirmation =>true
  	 validates_confirmation_of :email
end
