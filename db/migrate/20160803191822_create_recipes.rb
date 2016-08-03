class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :prep_time, null: false
      t.integer :cook_time, null: false
      t.text :ingredients, null: false
      t.float :price, null: false
      t.text :description, null: false
      t.text :directions, null: false
      t.integer :servings, null: false
      t.string :course, null: false
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
