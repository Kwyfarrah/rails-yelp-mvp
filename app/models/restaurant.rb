class Restaurant < ApplicationRecord
  STYLE = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: STYLE }
end
