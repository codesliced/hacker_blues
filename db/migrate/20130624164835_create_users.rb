class CreateUsers < ActiveRecord::Migration
  def change
     create_table :users do |t|

      t.text    :username
      t.text    :email
      t.text    :password_hash
      t.timestamps
   end
  end

  def up
  end

  def down
  end
end
