class Item < ApplicationRecord
  validates :text, presence: true
  has_one_attached :image
  belongs_to :user

  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)  #検索機能
    if search != ""
      Item.where('text LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
