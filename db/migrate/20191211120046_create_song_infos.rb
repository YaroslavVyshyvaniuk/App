class CreateSongInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :song_infos do |t|
      t.integer :duration
      t.string :date
      t.integer :song_id

      t.timestamps
    end
  end
end
