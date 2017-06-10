class PlayersController < ApplicationController

    def create
        @game = Game.find(params[:id])
        @player = @game.players.new
    end
    
end
