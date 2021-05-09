class Api::V1::SongsController < ApplicationController

    def index 
        songs = Song.all
        render json: songs
    end

    def show
        song = Song.find_by(id: params[:id])
        if song
          render json: song, except: [:created_at, :updated_at]
        else
          render json: {message: 'Song not found'}
        end
    end


end
