class User < ApplicationRecord
  has_many :posts, inverse_of: :user, dependent: :destroy, before_add: :before_add_post, after_add: :after_add_post, before_remove: :before_remove_post, after_remove: :after_remove_post
  has_many :friendships, inverse_of: :user
  has_many :comments, as: :commentable, dependent: :destroy, inverse_of: :user
  has_many :likes, as: :likeable, dependent: :destroy, inverse_of: :user
  has_many :notifications, as: :notifiable


  def before_add_post(post)
    puts "About to add post #{post.id} to user #{self.id}"
  end

  def after_add_post(post)
    puts "Added post #{post.id} to user #{self.id}"
  end

  def before_remove_post(post)
    puts "About to remove post #{post.id} from user #{self.id}"
  end

  def after_remove_post(post)
    puts "Removed post #{post.id} from user #{self.id}"
  end
end
