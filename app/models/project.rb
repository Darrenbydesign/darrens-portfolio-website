class Project < ApplicationRecord
  # validate the values are entered into the form before contin
  validates :title, presence: true, length: {minimum: 4}
  validates :body, presence: true
  # paper clip parameters 
  has_attached_file :image, 
    styles: {large:"900x900>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
