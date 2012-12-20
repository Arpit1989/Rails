class CreateGithubs < ActiveRecord::Migration
  def change
    create_table :githubs do |t|
      t.string :github_url
      t.references :User

      t.timestamps
    end
    add_index :githubs, :User_id
  end
end
