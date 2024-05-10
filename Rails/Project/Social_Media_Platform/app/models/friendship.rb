class Friendship < ApplicationRecord
  belongs_to :user, dependent: :destroy, inverse_of: :friendship
end
