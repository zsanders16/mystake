Rails.application.routes.draw do

  root 'games#index'

  devise_for :users
  resources :games
  resources :players
  resources :answer_cards
  resources :sentence_cards
  resources :game_cards
  resources :player_cards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
