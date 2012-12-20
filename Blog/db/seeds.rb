# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'editor' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Arpit', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please',:blogurl =>"https://www.blogspot.com"
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Praggo', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please',:blogurl =>"https://www.blogspot2.com"
puts 'New user created: ' << user2.name
user.add_role :admin
user2.add_role :editor