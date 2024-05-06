class Address < ApplicationRecord
  belongs_to :customer

  validates :house_number, :sector, :city, :state, :country, :pincode, presence: true
  validates :pincode, presence: true, numericality: { only_integer: true }

end
