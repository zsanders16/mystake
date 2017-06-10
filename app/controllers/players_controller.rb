class PlayersController < ApplicationController

    def create
    
        @game = Game.find(params[:game_id])
        @player = @game.players.new(player_params)
        @player.save

        5.times do
            @player.player_cards.new(answer_card_id: AnswerCard.all.sample.id)
        end
        
        redirect_to game_path(params[:game_id])

    end
    

    private 

        def player_params
            params.require(:player).permit(:name)
        end
        
end
