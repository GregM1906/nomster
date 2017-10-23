class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.json :image
      t.string :caption
      t.integer :place_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
