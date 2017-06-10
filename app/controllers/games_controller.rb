class GamesController < ApplicationController
  
  def index
    @game = Game.create
    5.times do
      @game.game_cards.create(sentence_card_id: SentenceCard.all.sample.id)
    end
  end

  def show
    @game = Game.find(params[:id])
    @player = Player.new
  end
  

  def create
    @game = Game.create 

  end
  
end
