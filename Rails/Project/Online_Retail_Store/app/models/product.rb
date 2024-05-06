class Product < ApplicationRecord
  belongs_to :brand , inverse_of: :products, foreign_key: 'title', validate: true
  belongs_to :category, inverse_of: :products, foreign_key: 'title', validate: true
  belongs_to :seller, inverse_of: :products, foreign_key: 'name', validate: true
  has_many :reviews
  has_many :order_summaries


  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end
