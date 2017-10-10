class Picture < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  belongs_to :theme
  belongs_to :review

  validates :title
  validates :description, presence: true
  validates :photo
end
