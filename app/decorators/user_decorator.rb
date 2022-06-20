class UserDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def full_name
    user.name + ' / ' + user.email
  end

  def find_follower
    current_user.id != user.id && user.followers.find_by(follower_id: current_user.id)
  end

  def count_followers
    user.followers.count #.size
  end

  def count_following
    Follower.where(follower_id: user.id).count #cambiar en modelo, crear method following
  end

end
