class Api::V1::QuestionsController < ApplicationController
    def index 
        questions = Question.all
        render json: questions, except: [:created_at, :updated_at]
    end

    def show
        question = Question.find_by(id: params[:id])
        if question
          render json: question, except: [:created_at, :updated_at]
        else
          render json: {message: 'Question not found'}
        end
    end
end
