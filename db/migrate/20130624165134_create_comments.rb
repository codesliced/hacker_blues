class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |c|
      c.text :content
      c.references :user
      c.references :post
      c.timestamps
    end
  end

  def change
    create_

  def up
  end

  def down
  end
end
