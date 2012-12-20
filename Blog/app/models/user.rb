class User < ActiveRecord::Base
	
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name ,:blogurl
  # attr_accessible :title, :body
  attr_accessible :role_ids, :as => :admin
  
  validates_uniqueness_of :blogurl,:name, :email, :case_sensitive => false
  validate :blog_or_github 



  def blog_or_github
  errors.add('please enter blogurl or github_url') if self.blogurl.nil? && self.name.nil?
    
  end
  def name
    :name
  end
  def admin?
  :admin
  end
  
      
  

end