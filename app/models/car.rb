class Car < ApplicationRecord
  belongs_to :colour
  belongs_to :user
  has_one_attached :picture

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :kilometres, presence: true
  # validates :has_rego, presence: true - will give error if value is false
  validates :colour_id, presence: true
  # validates :purchased, presence: true - sgives same error as above
  validates :user_id, presence: true

end
