class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.integer :disc_id
      t.integer :music_number
      t.string :music_name
      t.datetime :music_time

      t.timestamps
    end
  end
end
