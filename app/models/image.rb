class Image < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :url, presence: true
end
