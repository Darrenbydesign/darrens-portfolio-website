class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_attached_file :image, styles: { 
    large: "600 x 600>", 
    medium: "300 x 300>", 
    thumb: "100 x 100>" 
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
