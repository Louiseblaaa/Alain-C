class Picture < ApplicationRecord
  belongs_to :theme
  belongs_to :review
end
