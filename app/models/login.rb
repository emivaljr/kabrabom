class Login < ActiveRecord::Base
  validates_presence_of :username
  belongs_to :user
  validates :password, :presence =>true, :confirmation =>true
  validates_confirmation_of :password
end
