class Product < ApplicationRecord
  belongs_to :brand , inverse_of: :product, foreign_key: 'title', validate: true
  belongs_to :category, inverse_of: :product, foreign_key: 'title', validate: true
  belongs_to :seller, inverse_of: :product, foreign_key: 'name', validate: true
  has_many :reviews, optional: true
end
