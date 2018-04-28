class Project < ApplicationRecord
  validates :title, prescence: true, length: { minimum: 4}
  validates :body, prescence: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
