class Comment < ActiveRecord::Base
  belongs_to :blogspot
  attr_accessible :body, :commenter
end
