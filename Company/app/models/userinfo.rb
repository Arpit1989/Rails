class Userinfo < ActiveRecord::Base
  attr_accessible :Interest, :hobbies, :location, :name
  validates :name,  :presence => true
  has_many :projects
end
