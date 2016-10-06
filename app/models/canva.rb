
class Canva < ActiveRecord::Base

  has_attached_file :image, :styles => {  :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage/
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /jpg\Z/, /JPG\Z/, /gif\Z/]
  validates_attachment_presence :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes



  belongs_to :user
  has_many :sketches

end
