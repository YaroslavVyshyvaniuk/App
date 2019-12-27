class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :pages
      t.string :genre
      t.integer :price
      t.belongs_to :author

      t.timestamps
    end
  end
end
