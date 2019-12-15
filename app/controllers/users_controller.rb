class UsersController < ApplicationController

    def show
        user_id = params[:id]
        if user_id.to_i == logged_in_user_id
          user = User.find(user_id)
          render json: user, include: :favorites
        else
          render json: {
            go_away: true
          }, status: :unauthorized
        end
      end

    def index
        users = User.all
        render json: users
    end

    

    def create
        user = User.create(user_params)
        if user.valid?
          render json: token(user)
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end 
      end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
