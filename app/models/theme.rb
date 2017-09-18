class Theme < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  has_many :pictures, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :photo
  validates :created_at, presence: true
  validates :updated_at
end
