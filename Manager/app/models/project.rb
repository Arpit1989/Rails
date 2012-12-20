class Project < ActiveRecord::Base
  belongs_to :Github
  attr_accessible :project_url
  has_many :heroku
end
