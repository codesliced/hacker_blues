class CommentVote < ActiveRecord::Base
  attr_accessible :comment_id, :vote, :user_id
  belongs_to :comment
  belongs_to :voter, class_name:'User', :foreign_key => :user_id
end
