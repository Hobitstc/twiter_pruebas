class TweetDecorator < ApplicationDecorator
  delegate_all
  def creation_date
    time=tweet.created_at
    time.to_formatted_s( :short)
  end

end
