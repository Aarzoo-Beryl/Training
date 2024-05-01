class Publisher < ApplicationRecord
  validates :name, :email, :phone_number , presence: true
  validates :phone_number, uniqueness:true, numericality: { only_integer: true }
  validates :email, format:{ with: URI::MailTo::EMAIL_REGEXP, message: "format must be of type: abc@example.com"}
end
