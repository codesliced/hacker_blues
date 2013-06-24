class CreatePostVotes < ActiveRecord::Migration
 def change
   create_table :post_votes do |t|
     t.references :post
     t.references :user
     t.integer :vote
     t.timestamps
   end
 end

  def up
  end

  def down
  end
end
