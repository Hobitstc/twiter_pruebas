class AddForeingKeysUserAndFollower < ActiveRecord::Migration[7.0]
  def change
<<<<<<< main
    add_foreign_key :followers, :users, column: :user_id, primary_key: :id
    add_foreign_key :followers, :users, column: :follower_id
=======
    add_foreign_key :followers, :users, column: :user, primary_key: :id
    add_reference :followers, :users, column: :follower, reference: :name
>>>>>>> Creacion tabla followers y añadido columna name a users
  end
end
