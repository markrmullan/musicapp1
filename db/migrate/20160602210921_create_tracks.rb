class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id
      t.string :title, null: false
      t.text :lyrics
      t.string :track_type, null: false

      t.timestamps
    end
  end
end
