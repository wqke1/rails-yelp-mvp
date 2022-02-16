class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :category, :address, :phone_number, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
end
