class Sample < ApplicationRecord
  validates :content_url, presence: true
  validates :image_url, presence: true
  validates :headline, presence: true
  validates :description, presence: true
  validates :medium, presence: true
  validates :date, presence: true
end
