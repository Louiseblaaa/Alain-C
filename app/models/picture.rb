class Picture < ApplicationRecord
  belongs_to :theme
  has_many :reviews, dependent: :destroy

  validates :title
  validates :description, presence: true
  validates :photo, presence: true
  validates :created_at, presence: true
  validates :updated_at
end
