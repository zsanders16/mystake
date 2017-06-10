Rails.application.routes.draw do

  root 'games#Index'

  devise_for :users
  resources :game
  resources :player
  resources :answer_card
  resources :sentence_card
  resources :game_card
  resources :player_card

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
