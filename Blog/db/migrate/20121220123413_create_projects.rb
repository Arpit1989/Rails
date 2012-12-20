class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :Project_Url
      t.string :title
      t.text :description
      t.references :github

      t.timestamps
    end
    add_index :projects, :github_id
  end
end
