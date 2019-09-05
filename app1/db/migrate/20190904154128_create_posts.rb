class CreatePosts < ActiveRecord::Migration[5.1]
  def up
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :title
      t.integer :position
      t.text :content
      t.integer :user_id
      t.timestamps
    end
  end    
  
  def down
      drop_table :posts
  end
  
end
