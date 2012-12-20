class CreateBlogUrls < ActiveRecord::Migration
  def change
    create_table :blog_urls do |t|
      t.string :blog_url
      t.references :User

      t.timestamps
    end
    add_index :blog_urls, :User_id
  end
end
