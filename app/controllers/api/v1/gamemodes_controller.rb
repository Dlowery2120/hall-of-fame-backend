class Api::V1::GamemodesController < ApplicationController

    # before_action :logged_in?

    def index 
        gamemodes = Gamemode.all
        render json: gamemodes
    end

    def show
        gamemode = Gamemode.find_by(id: params[:id])
        if gamemode
          render json: gamemode, except: [:created_at, :updated_at]
        else
          render json: {message: 'Gamemode not found'}
        end
    end


end
