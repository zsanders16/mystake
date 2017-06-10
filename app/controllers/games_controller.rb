class GamesController < ApplicationController
  def index
  end

  def new
    @game = Game.new
    @number_players([:number_players])
  end
  

  
end
