Rails.application.routes.draw do
  get 'sentence_cards/index'

  get 'sentence_cards/new'

  get 'sentence_cards/edit'

  get 'answer_cards/index'

  get 'answer_cards/new'

  get 'answer_cards/edit'

  root 'games#Index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
