class AddForeignkeysToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookmarks, :list, null: false, foreign_key: true
    add_reference :bookmarks, :book, null: false, foreign_key: true
  end
end
