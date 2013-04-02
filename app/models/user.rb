class User < ActiveRecord::Base
  attr_accessible :email, :password, :username
  has_many :shouts
  has_many :likes
  has_many :liked_shouts, :through => :likes, :source => :shout

  validates :username, :presence => true
  validates :username, :uniqueness => true
  validates :username, :length => {:minimum=>2,:maximum=>10}

end
