class Item < ApplicationRecord
  belong_to :user
  belongs_to :category
  has_many :images
  validates :user_id, :name, :category_id, presence: true
end
