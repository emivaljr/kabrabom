class ServiceImage < ActiveRecord::Base
  belongs_to :service_ad

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment :photo, presence: true,
                       content_type: { content_type: "image/jpeg" },
                       size: { in: 0..10.megabytes }
end
