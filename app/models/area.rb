class Area < ApplicationRecord
  validates :area_text, presence: true
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  

   #空の投稿を保存できないようにする
   validates :prefecture_id, presence: true

   #ジャンルの選択が「---」の時は保存できないようにする
   validates :prefecture_id, numericality: { other_than: 0 } 

   belongs_to :user
end
