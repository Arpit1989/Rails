class Blog < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 10 }
					
	has_many :comments
	has_many :tags
	accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
