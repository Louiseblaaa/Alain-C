class Review < ApplicationRecord
  belongs_to :theme
  belongs_to :picture

  validates :name, presence: true
  validates :email, presence: true
  validates :picture_review, presence: true
  validates :theme_review, presence: true
end
