class User < ApplicationRecord
  has_many :posts, inverse_of: :user,  dependent: :destroy
  has_many :friendships, inverse_of: :user
  has_many :comments, as: :commentable, dependent: :destroy, inverse_of: :user
  has_many :likes, as: :likeable, dependent: :destroy, inverse_of: :user
  has_many :notifications, as: :notifiable


  after_destroy :destroy_info

  private
    def destroy_info
      puts("post related to user #{self.name} is destroyed")
    end
end
