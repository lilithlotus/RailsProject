class User < ApplicationRecord
  has_secure_password
  has_many :images
  has_many :items
  has_many :user_categories
  has_many :categories, through: :item_categories
  validates :email, uniqueness: true
end
