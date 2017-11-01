class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_attached_file :image
    # styles: { large: ["600x600>", :jpg], medium: ["300x300>", :jpg], thumb: ["100x100#", :jpg] },
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
