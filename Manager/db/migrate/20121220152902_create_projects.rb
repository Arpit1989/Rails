class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_url
      t.references :Github

      t.timestamps
    end
    add_index :projects, :Github_id
  end
end
