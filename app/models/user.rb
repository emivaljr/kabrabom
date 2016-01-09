class User < ActiveRecord::Base
	 validates_presence_of :name,:cpf
	 has_many :addresses, :dependent => :destroy
	 has_many :phones, :dependent => :destroy
   has_many :logins, :dependent => :destroy
	 accepts_nested_attributes_for :addresses  , :allow_destroy => true
   accepts_nested_attributes_for :logins  , :allow_destroy => true
	 accepts_nested_attributes_for :phones  , :allow_destroy => true
	  	 validates :email, :presence =>true, :confirmation =>true
  	 validates_confirmation_of :email
end
