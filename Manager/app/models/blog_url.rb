class BlogUrl < ActiveRecord::Base
  belongs_to :User
  attr_accessible :blog_url
end
