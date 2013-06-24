class PostVote < ActiveRecord::Base
  attr_accessible :vote, :post_id, :user_id
  belongs_to :post
  belongs_to :voter, class_name: "User", :foreign_key => :user_id
end
