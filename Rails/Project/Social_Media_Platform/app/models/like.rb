class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true
  has_many :notifications, as: :notifiable

end
