class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.string :song_title
      t.text :artist
      t.text :album

      t.timestamps
    end
  end
end
