class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :comments
  validates :title, presence: true
  validates :description, presence: true
end
