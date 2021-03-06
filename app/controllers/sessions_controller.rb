class SessionsController < ApplicationController
    skip_before_action :authorized?, only: [:new_login, :login]
    
    def logout 
        session.delete(:user_id)
        redirect_to new_login_path
        # redirect_back fallback_location: users_path
      end 
    
      def new_login
      end 
    
      def login 
        # find user 
        @user = User.find_by(email: params[:session][:email])
    
        #compare passwords
        if @user && @user.authenticate(params[:session][:password])
          session[:user_id] = @user.id 
          redirect_to users_path
        else 
          flash[:error] = "Password or Email did not match"
          redirect_to new_login_path
        end 
      end 
    
end
