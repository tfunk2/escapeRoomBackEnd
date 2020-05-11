class GamesController < ApplicationController

    before_action :authenticate, only: [:index, :create, :destroy]

    def index
        @games = Game.all
        render json: @games
    end

    def create
        @game = Game.create(game_params)
        render json: @game
    end

    def destroy
        found_game = Game.find(params[:id])
        @game = found_game.destroy
        render json: @game
    end

    private

    def game_params
        params.require(:game).permit(:user_id, :seconds_to_complete, :total_misses)
    end

end
