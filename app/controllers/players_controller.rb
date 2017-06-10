class PlayersController < ApplicationController

    def create
        @game = Game.find(params[:game_id])
        @player = @game.players.new

        @player.save
        redirect_to game_path(params[:game_id])
    end
    
end
