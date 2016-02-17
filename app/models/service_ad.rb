class ServiceAd < ActiveRecord::Base
  belongs_to :service
  has_one :service_unit
  has_one :state
  has_one :category

  has_many :service_images, :dependent => :destroy
  has_many :city_coverages, :dependent => :destroy, inverse_of: :service_ad
  has_many :cities, through: :city_coverages
  has_many :district_coverages, :dependent => :destroy, inverse_of: :service_ad
  has_many :districts, through: :district_coverages

  accepts_nested_attributes_for :service_images
  accepts_nested_attributes_for :city_coverages
  accepts_nested_attributes_for :district_coverages



  validates_presence_of :service,:title,:description,:price,:user_id,:service_id,:service_unit_id,:state_id,:category_id

end
