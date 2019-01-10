class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, index: true, foreign_key: true
      t.integer :article_id, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :likes, %i[user_id article_id], unique: true
  end
end
