class Api::V1::GamemodesController < ApplicationController

    # before_action :logged_in?

    def index 
        gamemodes = Gamemode.all
        render json: gamemodes
    end

end
