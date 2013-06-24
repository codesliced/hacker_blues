class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :title
      p.string :url
      p.integer :user_id
      p.timestamps
    end
  end
end
