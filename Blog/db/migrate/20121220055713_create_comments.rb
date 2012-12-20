class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :blogspot

      t.timestamps
    end
    add_index :comments, :blogspot_id
  end
end
