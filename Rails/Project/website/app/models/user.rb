class User < ApplicationRecord
  validates :name, :email, :phone_number, :gender, :address, presence: true , on: [:create, :update]
  validates :name , format: { with: /\A[a-zA-Z\s]+\z/, message: "only alphabets are allowed" }, on: [:create, :update]
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "format must be of type: abc@example.com" }, on: [:create, :update]
  validates :phone_number, uniqueness: true, length: {is: 10, message:"must be 10 digits"}, numericality: { only_integer: true }, on: [:create, :update]
  validates :gender, inclusion: { in:%w(Male Female Other).map(&:downcase), uniqueness: false, message: "%{value} is not a valid gender, Please specify something among (Male Female Other)" }, on: [:create, :update]


  validates :validation_needed, acceptance: {message: "checkbox must be ticked to delete the user"}, on: :delete
  validates :validation_needed, acceptance: {message: "checkbox must be ticked to update the user"}, on: :update

end
