class CreateUserCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_categories do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :sub_category
    end
  end
end
