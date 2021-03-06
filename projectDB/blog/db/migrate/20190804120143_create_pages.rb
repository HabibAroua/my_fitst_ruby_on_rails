class CreatePages < ActiveRecord::Migration[5.1]
  
  def up
    create_table :pages do |t|
      t.integer "topic_id"
      t.string "name"
      t.string "permalink"
      t.integer "postition"
      t.boolean "visible" , :default => false
      t.timestamps
    end
    add_index("pages","topic_id")
    add_index("pages","permalink")
  end
  
  def down
    drop_table :pages
  end
  
end