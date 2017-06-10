class GamesController < ApplicationController
  
  def index
<<<<<<< HEAD
     @game = Game.create
=======
    
>>>>>>> working page
  end

  def show
    @game = Game.find(params[:id])
    @player = Player.new
  end
  

  def create
<<<<<<< HEAD
   
=======
    @game = Game.create 

>>>>>>> working page
  end
  
end
