class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.references :menu, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
