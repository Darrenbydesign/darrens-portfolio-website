class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_attached_file :image,
    styles: {
      medium: ["600x600>"],
      large: ["900x900>"]
    }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
