class CreateLoves < ActiveRecord::Migration[5.0]
  def change
    create_table :loves do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.timestamps

      add_index(:loves, [:user_id, :recipe_id], unique: true)
    end
  end
end
