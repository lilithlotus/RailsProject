class User < ApplicationRecord
  has_many :images
  has_many :items
  has_many :user_categories
  has_many :categories, through: :item_categories
end
