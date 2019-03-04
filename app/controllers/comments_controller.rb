class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
        @comments = User.find(params[:id])
        render json: User.to_json(include:[:content])
    end

end