class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :overview
      t.string :book_url
      t.integer :rating

      t.timestamps
    end
  end
end
