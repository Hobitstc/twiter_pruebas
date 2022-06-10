module Followers
  class Create
    def initialize(user_id:, follower_id:)
      @user_id = user_id
      @follower_id = follower_id
    end

    def execute
      Follower.create!(user_id: @user_id, follower_id: @follower_id)
    end
  end
end