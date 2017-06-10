class GamesController < ApplicationController
  
  def index
     @game = Game.create
  end

  def show
    @game = Game.find(params[:id])
    @player = Player.new
  end
  

  def create
    @game = Game.create 

  end
  
end
