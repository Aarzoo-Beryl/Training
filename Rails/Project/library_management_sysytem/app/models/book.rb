class Book < ApplicationRecord
  validates :title, :author, :publication_year, :quantity_available, presence: true
  validates :title, uniqueness: true
  validates :publication_year, comparison: {less_than_or_equal_to: Date.current, message: "publication year must be less than or equal to the current date " }
  validates :quantity_available, comparison: {greater_than_or_equal_to: 0}
  validates :genre, absence: true
end
