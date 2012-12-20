class CreateHerokus < ActiveRecord::Migration
  def change
    create_table :herokus do |t|
      t.string :heroku_url
      t.references :Project

      t.timestamps
    end
    add_index :herokus, :Project_id
  end
end
