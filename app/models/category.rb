class Category < ApplicationRecord
  has_many :items
  has_many :user_categories
end
