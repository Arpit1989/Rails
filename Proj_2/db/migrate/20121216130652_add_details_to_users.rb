class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :Emp_no, :integer
    add_column :users, :hobbies, :string
    add_column :users, :interest, :string
    add_column :users, :about_user, :text
  end
end
