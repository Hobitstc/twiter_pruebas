class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
<<<<<<< main
      t.bigint :user_id, null: false
      t.bigint :follower_id, null: false
=======
      t.bigint :user, null: false
      t.string :follower, null: false
>>>>>>> Creacion tabla followers y añadido columna name a users
      t.timestamps


    end
  end
end
