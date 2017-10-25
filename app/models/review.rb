class Review < ApplicationRecord
  belongs_to :picture

  validates :name, presence: true
  validates :email, presence: true
  validates :comment, presence: true

end
