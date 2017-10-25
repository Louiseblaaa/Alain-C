class Picture < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  belongs_to :album
  has_many :reviews, dependent: :destroy

  validates :title
  validates :description, presence: true
  validates :photo, presence: :true

end
