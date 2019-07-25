class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    if user_attributes[:username] != ""
      user = User.find_or_create_by(username: user_attributes[:username])
      self.user = user
    end
      
  end

  def user_name=(name)
  	self.user = User.find_or_create_by(username: name)
  	 # byebug
  end

  def user_name
  	self.user ? self.user.username : nil 
  end

end
