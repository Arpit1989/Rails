class AddGithubUserName < ActiveRecord::Migration
  def up
  	def change
    add_column :users, :name, :string
  end
  def down
  end
end
