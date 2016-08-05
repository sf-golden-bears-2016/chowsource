class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :prep_time
      t.integer :cook_time
      t.text :ingredients
      t.float :price
      t.text :description
      t.text :directions
      t.integer :servings
      t.string :course
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
