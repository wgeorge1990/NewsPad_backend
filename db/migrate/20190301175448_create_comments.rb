class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :favorite_id

      t.timestamps
    end
  end
end
