class Theme < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  #belongs_to :review

  has_many :pictures, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: :true
end
