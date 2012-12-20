class CreateBlogspots < ActiveRecord::Migration
  def change
    create_table :blogspots do |t|
      t.string :name
      t.string :title
      t.text :content
      t.references :User

      t.timestamps
    end
    add_index :blogspots, :User_id
  end
end
