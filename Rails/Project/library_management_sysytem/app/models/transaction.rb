class Transaction < ApplicationRecord
  has_many :books
  has_many :memebers
  validates :checkout_date, :return_date, :status, :books_id, :mememer_id, presence: true
  validates :checkout_date, comparison: {less_than_or_equal_to: :return_date}
  validates :return_date, comparison: {greater_than_or_equal_to: :checkout_date}
end
