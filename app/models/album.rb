class Album < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  belongs_to :theme
  has_many :pictures

  validates :title
  validates :description, presence: true
  validates :photo, presence: :true

end
