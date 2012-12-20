class Blogspot < ActiveRecord::Base
  belongs_to :User
  attr_accessible :content, :name, :title
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
end
