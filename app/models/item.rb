class Item < ApplicationRecord
  belong_to :user
  belongs_to :category
  has_many :images
  validates :user_id, :name, :category_name, presence: true

  def category_attributes=(category)
    self.category = Category.find_or_create_by(name: category.name)
    self.category.update(category)
  end
end
