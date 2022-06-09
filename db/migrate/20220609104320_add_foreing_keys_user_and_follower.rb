class AddForeingKeysUserAndFollower < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :followers, :users, column: :user_id, primary_key: :id
    add_foreign_key :followers, :users, column: :follower_id
  end
end
