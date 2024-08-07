class Post < ApplicationRecord
  belongs_to :user, inverse_of: :posts
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :notifications, as: :notifiable


end
