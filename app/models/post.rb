class Post < ActiveRecord::Base
  has_many :comments
  mount_uploader :image, ImageUploader
  validates :title, :body, presence: true
  validates :image, file_size: { less_than: 1.megabyte }
end
