class Github < ActiveRecord::Base
  belongs_to :User
  attr_accessible :github_url
  has_many :project
end
