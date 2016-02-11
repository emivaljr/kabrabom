class DistrictCoverage < ActiveRecord::Base
  belongs_to :service_ad
  belongs_to :district
end
