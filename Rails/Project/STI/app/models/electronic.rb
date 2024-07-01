class Electronic < ApplicationRecord
  include Productable
  validates :brand, presence: true
  validates :model, presence: true
  validates :warranty, presence: true
end
