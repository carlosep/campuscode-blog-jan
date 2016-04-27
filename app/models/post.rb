class Post < ActiveRecord::Base
  has_many :comments
  validates :title, :body, presence: true
  mount_uploader :image, ImageUploader
end
