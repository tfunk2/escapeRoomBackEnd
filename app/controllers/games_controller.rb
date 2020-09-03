class GamesController < ApplicationController

    # before_action :authenticate, only: [:index, :create]

    def index
        @games = Game.all
        render json: @games
    end

    def create
        @game = Game.create(game_params)
        render json: @game
    end

    private

    def game_params
        params.require(:game).permit(:user, :seconds_to_complete, :total_misses)
    end

end
