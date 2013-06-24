class PostVote < ActiveRecord::Base
  belongs_to :post
  belongs_to :voter, class_name: "User", :foreign_key => :user_id

end
