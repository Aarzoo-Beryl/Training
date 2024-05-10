class Post < ApplicationRecord
  belongs_to :user, inverse_of: :post
  has_many :comments, as: :commentable, dependent: :destroy, inverse_of: :post
  has_many :likes, as: :likeable, dependent: :destroy, inverse_of: :post
  has_many :notifications, as: :notifiable

end
