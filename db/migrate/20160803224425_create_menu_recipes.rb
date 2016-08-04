class CreateMenuRecipes < ActiveRecord::Migration[5.0]
  def change

    create_join_table :menus, :recipes do |t|
      t.index :menu_id
      t.index :recipe_id
    end
  end
end
