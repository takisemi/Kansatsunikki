class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many_attached :images

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true

end
