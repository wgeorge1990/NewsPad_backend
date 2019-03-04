class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            render json: @favorite
        else
           return "Me no save"
        end
    end

    private
    def favorite_params
        params.require(:favorite).permit(:title, :url, :image_url, :user_id)
    end
end