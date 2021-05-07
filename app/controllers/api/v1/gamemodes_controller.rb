class Api::V1::GamemodesController < ApplicationController

    before_action :logged_in?

    def index 
        gamemodes = Gamemodes.all
        render json: gamemodes
    end

end
