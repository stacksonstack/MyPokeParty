class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          flash[:success] = "user successfully created"
          redirect_to user_path(@user)
        else
          flash[:error] = "Something went wrong"
          render new_user_path()
        end
    end
    
    
    

    private

    def user_params
        params.require(:user).permit(:username, :age, :email, :password, :bio, :favorite_pokemon, :favorite_type)
    end




end
