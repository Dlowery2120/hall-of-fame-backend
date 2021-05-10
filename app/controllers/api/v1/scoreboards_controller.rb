class Api::V1::ScoreboardsController < ApplicationController
    def index 
        scoreboards = Scoreboard.all
        render json: scoreboards, except: [:created_at, :updated_at]
    end

    def show
        scoreboard = Scoreboard.find_by(id: params[:id])
        if scoreboard
          render json: scoreboard, except: [:created_at, :updated_at]
        else
          render json: {message: 'Scoreboard not found'}
        end
    end
end
