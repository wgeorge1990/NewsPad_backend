class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
         @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment
        else
           return "Me no save"
        end
    end

     private
    def comment_params
        params.permit(:comment, :favorite_id)
    end

end