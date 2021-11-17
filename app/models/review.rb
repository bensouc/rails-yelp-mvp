class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false,
    numericality: { only_integer: true },
    format: { with: /\A[0-5]/, message: "rating should be between 0 and 5" }
  # validates :restaurant_id, uniqueness: true
end
