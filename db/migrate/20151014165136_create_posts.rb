class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :date_published
      t.string :URL
      t.text :synopsis
      t.string :image

      t.timestamps null: false
    end
  end
end
