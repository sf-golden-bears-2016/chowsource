class CreateLoves < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :recipes do |t|
      t.index :user_id
      t.index :recipe_id
    end
  end
end
