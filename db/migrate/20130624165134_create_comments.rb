class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |c|
      c.text :content
      c.integer :user_id
      c.integer :post_id
      c.timestamps
    end
  end
end
