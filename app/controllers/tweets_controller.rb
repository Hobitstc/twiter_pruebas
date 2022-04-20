class TweetsController < ApplicationController
   before_action :authenticate_user!, only:[:new,:create]


 def new
   p '@@@@@@@@@@@@@@@@' #como un echo pero para terminal

   @tweet=Tweet.new  #inicializando

 end

 def create
   p params #para mirar los parametros enviados por el formulario

   @tweet=current_user.tweets.new tweet_params

   @tweet.save

   redirect_to "/tweets"

 end



 def destroy
  @tweet= Tweet.find(params[:id])
  @tweet.destroy
  redirect_to tweets_path


 end



 def index
    @tweets =Tweet.all

 end


 def show
   @tweet=Tweet.find(params[:id])
 end

 def tweet_params
  params.require(:tweet).permit(:title,:description,)

 end

end