module Followers
  class Destroy
    def initialize(user_id:, follower_id:)
      @user_id = user_id
      @follower_id = follower_id
    end

    def execute
      Follower.find_by(user_id: @user_id, follower_id: @follower_id)
              .destroy!
    end
  end

end