class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :url
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
