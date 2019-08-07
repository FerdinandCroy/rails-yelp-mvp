class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :category, presence: :true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

