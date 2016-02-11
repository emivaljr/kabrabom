class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :addresses, :dependent => :destroy

  accepts_nested_attributes_for :addresses

  validates_presence_of :cpf,:phone_number,:first_name,:last_name,:gender,:addresses

  attr_accessor :term

end
