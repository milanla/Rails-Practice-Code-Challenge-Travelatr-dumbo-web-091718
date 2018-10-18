class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :likes, default: 0
      t.integer :blogger_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
