class Picture < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  belongs_to :theme
  has_many :reviews, dependent: :destroy

  validates :title
  validates :description, presence: true
  validates :photo
  validates :created_at, presence: true
  validates :updated_at
end
