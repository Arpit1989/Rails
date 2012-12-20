class Project < ActiveRecord::Base
  belongs_to :github
  attr_accessible :Project_Url, :description, :title
end
