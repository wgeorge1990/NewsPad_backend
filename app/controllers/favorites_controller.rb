class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.new(title: favorite_params['title'], url: favorite_params['url'], image_url: favorite_params['image_url'], user_id: favorite_params['user_id'])
        if @favorite.save
            render json: @favorite
        else
           return "Me no save"
        end
    end

    private
    def favorite_params
        params.permit(:title, :url, :image_url, :user_id)
    end
end