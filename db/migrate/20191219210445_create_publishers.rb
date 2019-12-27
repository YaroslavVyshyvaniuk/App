class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :location
      t.integer :money
      t.string :founder

      t.timestamps
    end
  end
end
