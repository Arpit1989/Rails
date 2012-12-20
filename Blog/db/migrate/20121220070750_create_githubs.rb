class CreateGithubs < ActiveRecord::Migration
  def change
    create_table :githubs do |t|
      t.references :User
      t.string :GithubUrl
      t.string :title
      t.text :Description

      t.timestamps
    end
    add_index :githubs, :User_id
  end
end
