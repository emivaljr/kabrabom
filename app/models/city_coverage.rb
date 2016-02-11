class CityCoverage < ActiveRecord::Base
  belongs_to :service_ad , :inverse_of => :city_coverages
  belongs_to :city , :inverse_of => :city_coverages
end
