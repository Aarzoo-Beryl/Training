class User < ApplicationRecord
  has_many :posts, inverse_of: :user
  has_many :friendships, inverse_of: :user
  has_many :comments, as: :commentable, dependent: :destroy, inverse_of: :user
  has_many :likes, as: :likeable, dependent: :destroy, inverse_of: :user
  has_many :notifications, as: :notifiable

end
