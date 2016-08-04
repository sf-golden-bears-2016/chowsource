class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :token
      t.string :name
      t.string :pic
      t.string :uid
      t.string :email

      t.timestamps
    end
  end
end
