class District < ActiveRecord::Base
  belongs_to :city
  has_and_belongs_to_many :service_ads
end
