class PlayersquadsController < ApplicationController
    def create
        playersquad = Playersquad.create(playersquad_params)
        # if user.valid?
        #     user = user
        #     token = JWT.encode({user_id: user.id}, secret, 'HS256')
        #     render json: {user: user, token: token}
        # else
        #     render json: {errors: user.errors.full_messages}
        # end
    end

    def index
        playersquads = Playersquad.all 
        render json: playersquads
    end

    def show
        playersquad = Playersquad.find(params[:id])
        render json: playersquad

    end

    def playersquad_params
        params.permit(:squad_id, :player_id)
    end
end
