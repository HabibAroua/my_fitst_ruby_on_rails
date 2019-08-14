class CreateJoinTableAuthorsBooks < ActiveRecord::Migration[5.1]
  def change
    create_join_table :authors, :books do |t|
      # t.index [:author_id, :book_id]
      # t.index [:book_id, :author_id]
    end
  end
end
# https://www.learneroo.com/modules/137/nodes/768
#https://www.sitepoint.com/master-many-to-many-associations-with-activerecord/?fbclid=IwAR1l0puC1KK80IRs0sMzE40W14ke2dr0U6c5xC3nr5cW3QR9FvJftWLrnOs