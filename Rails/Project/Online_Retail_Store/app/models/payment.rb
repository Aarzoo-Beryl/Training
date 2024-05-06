class Payment < ApplicationRecord
  has_many :payment_types, validate: true, foreign_key: "title"
  belongs_to :bill, validate: true ,dependencies: :delete
  has_one :customer , through: :bill
end
