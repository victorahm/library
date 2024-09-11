class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books, id: :uuid do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.string :isbn
      t.integer :year
      t.string :slug

      t.timestamps
    end
    add_index :books, :isbn, unique: true
    add_index :books, :slug, unique: true
  end
end
