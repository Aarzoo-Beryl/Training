class Memeber < ApplicationRecord
  validates :name, :email, :address, :phone_number, :membership_status , presence: true
  validates :name, format: {with: /\A[a-zA-z\s]+\z/ , message: "only aphabets are allowed in name field"}
  validates :phone_number, numericality: {only_integer: true, message: "only integers are allowed"}, length: { is: 10, message: "length of phone number must be 10"}
  validates :membership_status, inclusion: {in: %w(active inactive), message: "please define correct value for membership_status"}
  validates_with EmailValidator
end
