class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :value
      t.text :description
      t.integer :category_id
      t.integer :user_id
    end
  end
end
