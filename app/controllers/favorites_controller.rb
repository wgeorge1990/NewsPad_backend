class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites.to_json(include: [comments: { only: [:content] }])
    end

    def show
        @favorites = Favorite.find(params[:id])
        render json: @favorites.to_json(include:[:content])
    end

    def create
        @favorite = Favorite.find(comment_params['favorite'])
        @comment = Comment.new(content: comment_params['content'])
        @favorite.comments << @comment
        if @comment.save
            render json: @comment
        else
            render json: @comment.errors.full_messages
        end
    end

    private

    def comment_params
        params.permit(:content, :favorite)
    end
end