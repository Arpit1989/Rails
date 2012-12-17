class USer < ActiveRecord::Base
  attr_accessible :address, :date_of_birth, :emp_id, :first_name, :gender, :hobbies, :last_name
end
