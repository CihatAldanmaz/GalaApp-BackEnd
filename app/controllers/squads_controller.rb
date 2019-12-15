class SquadsController < ApplicationController

    def show
        squad = Squad.find(params[:id])
        render json: squad
    end

    def index
        squads = Squad.all
        render json: squads
    end

    

    def create
        squad = Squad.create(squad_params)
        render json: squad
        # if user.valid?
        #     user = user
        #     token = JWT.encode({user_id: user.id}, secret, 'HS256')
        #     render json: {user: user, token: token}
        # else
        #     render json: {errors: user.errors.full_messages}
        # end
    end

    def destroy
        squad = Squad.find(params[:id])
        squad.destroy
    end


    private

    def squad_params
        params.permit(:name, :user_id)
    end

end
