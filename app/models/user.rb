require 'bcrypt'
class User < ActiveRecord::Base
  attr_accessible :username, :email, :password
  has_many :posts
  has_many :comments

  has_many :post_votes
  has_many :all_posts_by_voter, :through => :post_votes, :source => :voter
  has_many :comment_votes

  has_secure_password

  validates :email, :username, :password, :presence => true

end
