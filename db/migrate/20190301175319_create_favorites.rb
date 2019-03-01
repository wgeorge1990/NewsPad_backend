class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :title
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
