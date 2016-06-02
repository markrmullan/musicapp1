class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :band_id
      t.string :name, null: false
      t.string :performance, null: false

      t.timestamps
    end
  end
end
