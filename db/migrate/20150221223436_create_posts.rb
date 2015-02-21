class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title, :embed_code, :content
      t.timestamps null: false
    end
  end
end
