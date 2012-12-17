class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :email
      t.string :fname
      t.string :lname
      t.string :emp_id
      
      t.date :date_birth
      t.string :gender
      t.text :address
      t.string :hobbies

      t.timestamps
    end
  end
end
