class UsersController < ApplicationController

    def show 

        @user=User.find(params[:id]).decorate


        #@current_user = User.find(session[:id]).decorate


        #@tweets =Tweet.where(user_id:@user.id)      
        #@tweets =Tweet.where(user:@user)
        @tweets = @user.tweets
        
    end

end