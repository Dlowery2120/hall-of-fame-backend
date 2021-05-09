class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.integer :length
      t.string :album
      t.integer :genre_id
      t.timestamps
    end
  end
end
