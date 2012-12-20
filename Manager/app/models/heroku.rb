class Heroku < ActiveRecord::Base
  belongs_to :Project
  attr_accessible :heroku_url
end
