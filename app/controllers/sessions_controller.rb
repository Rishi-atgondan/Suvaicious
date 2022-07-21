class SessionsController < ApplicationController

        def login
        @user = User.new
        @input_list = User.all
      end
    
      def create
    
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         flash.now[:notice] = "Logged in successfully"
        render plain: "success"
       else
         flash.now[:alert] = "Email or password is invalid"
         render plain: "fail"
       end
    
      end
    
      def destroy
        session[:user_id] = nil
        @user_logout = User.find(params[:id])
        @user_logout.destroy
      end
    end
    
    
    

























