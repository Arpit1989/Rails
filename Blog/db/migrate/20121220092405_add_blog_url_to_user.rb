class AddBlogUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :blogurl, :string
  end
end
