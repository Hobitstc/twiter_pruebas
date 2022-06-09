class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.bigint :user_id, null: false
      t.bigint :follower_id, null: false
      t.timestamps


    end
  end
end
