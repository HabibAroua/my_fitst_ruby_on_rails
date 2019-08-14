class CreateUserRules < ActiveRecord::Migration[5.1]
  def up
    create_table :user_rules, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.references :rule, index: true, foreign_key: true
    end
  end
  
  def down
  end
  
end
