class User < ApplicationRecord


  attr_accessor :accept # This represents the checkbox state

  validates :name, :email, :phone_number, :gender, :address, presence: true
  validates :name , format: { with: /\A[a-zA-Z\s]+\z/, message: "only alphabets are allowed" }
  validates :email, uniqueness: true, email: true
  validates :phone_number, uniqueness: true, length: {is: 10, message:"must be 10 digits"}, numericality: { only_integer: true }
  validates :gender, inclusion: { in:%w(Male Female Other (Male Female Other).map(&:downcase)), message: "%{value} is not a valid gender, Please specify something among (Male Female Other)" }


  validates :accept, acceptance: {message:" checkbox to proceed"}, on: [ :destroy, :update]


  # Other attributes and validations
  def initialize(attributes = {})
    super
    @accept = false # Default to unchecked
  end
end
