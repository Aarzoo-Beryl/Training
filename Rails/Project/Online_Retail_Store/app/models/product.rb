class Product < ApplicationRecord
  belongs_to :brand , inverse_of: :products, validate: true
  belongs_to :category, inverse_of: :products, validate: true
  belongs_to :seller, inverse_of: :products, validate: true
  has_many :reviews
  has_and_belongs_to_many :orders



  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end
