class Theme < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  has_many :albums, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: :true

end
