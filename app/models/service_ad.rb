class ServiceAd < ActiveRecord::Base
  belongs_to :service

  has_many :service_images, :dependent => :destroy

  accepts_nested_attributes_for :service_images

  attr_accessor :category


  validates_presence_of :category,:service,:title,:description,:price,:user_id,:service_id

end
