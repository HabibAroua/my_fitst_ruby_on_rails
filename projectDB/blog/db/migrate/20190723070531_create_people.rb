class CreatePeople < ActiveRecord::Migration[5.1]
  #def change
    #create_table :people do |t|

      #t.timestamps
    #end
  #end
  
  def up
    create_table :persons do |t|
      t.column "firstName" , :string , :limit => 60
      t.column "lastName" , :string , :limit =>60
      t.string "email" , :default=> '' , :null=>false
      t.string "password" , :limit =>255
      #t.datetime "create_at"
                           #==>t.timestamps
      #t.datetime "update_at"
      t.timestamps
    end
  end
  
  def down
    drop_table :persons
  end
end