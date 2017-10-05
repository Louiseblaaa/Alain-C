class Picture < ApplicationRecord

  mount_uploader :photo, PhotoUploader


  #has_many :reviews, dependent: :destroy

  validates :title
  validates :description, presence: true
  validates :photo
end
