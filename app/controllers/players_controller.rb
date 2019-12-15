class PlayersController < ApplicationController

    def show
        player = Player.find(params[:id])
        render json: player
    end

    def index
        players = Player.all
        render json: players
    end

    

    def create
        player = Player.create(player_params)
        # if user.valid?
        #     user = user
        #     token = JWT.encode({user_id: user.id}, secret, 'HS256')
        #     render json: {user: user, token: token}
        # else
        #     render json: {errors: user.errors.full_messages}
        # end
    end

    def player_params
        params.permit(:name, :position, :dob, :number, :img_url)
    end

end
