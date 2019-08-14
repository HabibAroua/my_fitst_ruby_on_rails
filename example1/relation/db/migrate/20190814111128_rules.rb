class Rules < ActiveRecord::Migration[5.1]
  def up
    create_table :rules do |t|
      t.column "name" , :string , :limit => 255
      t.timestamps
    end
  end
  
  def down
    drop_table :rules
  end
end

#https://dev.to/neshaz/everything-there-is-to-know-about-associations-in-rails-52ii