class CreateMenuRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_recipes do |t|
      t.integer :user_id
      t.integer :recipe_id
    end
  end
end
