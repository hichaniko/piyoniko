class Comment < ApplicationRecord
  validates :message, presence: true
  belongs_to :item  # itemテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション

end
