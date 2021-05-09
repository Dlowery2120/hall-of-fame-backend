class Api::V1::AnswersController < ApplicationController
    def index 
        answers = Answer.all
        render json: answers, except: [:created_at, :updated_at]
    end

    def show
        answer = Answer.find_by(id: params[:id])
        if answer
          render json: answer, except: [:created_at, :updated_at]
        else
          render json: {message: 'Genre not found'}
        end
    end
end
