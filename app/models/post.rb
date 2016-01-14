class Post < ActiveRecord::Base
  has_many :comments
  validates :author, presence: true
end
