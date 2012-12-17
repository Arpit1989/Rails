class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.string :name
      t.string :location
      t.string :hobbies
      t.text :Interest

      t.timestamps
    end
  end
end
