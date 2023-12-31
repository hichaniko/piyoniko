class Item < ApplicationRecord
  validates :text, presence: true
  has_one_attached :image
  belongs_to :user

  has_many :comments  # commentsテーブルとのアソシエーション
end
