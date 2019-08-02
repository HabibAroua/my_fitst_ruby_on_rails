class Admin < ActiveRecord::Migration[5.1]
  
  def up
    create_table :admins do |t|
      t.column "login" , :string , :limit => 60
      t.column "password" , :string , :limit =>60
      #t.datetime "create_at"
                           #==>t.timestamps
      #t.datetime "update_at"
      t.timestamps
    end
  end
  
  def down
    drop_table :admins
  end
  
  def rename
    rename_table :admins, :mainadmin
  end
end
