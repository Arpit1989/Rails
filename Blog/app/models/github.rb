class Github < ActiveRecord::Base
  belongs_to :User
  attr_accessible :Description, :GithubUrl, :title

  has_many :Project_Url ,:dependent => :destroy
end
