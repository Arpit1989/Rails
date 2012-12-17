class CreateUSers < ActiveRecord::Migration
  def change
    create_table :u_sers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :emp_id
      t.date :date_of_birth
      t.string :gender
      t.text :address
      t.string :hobbies

      t.timestamps
    end
  end
end
