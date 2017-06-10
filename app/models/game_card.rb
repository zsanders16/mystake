class GameCard < ApplicationRecord
  belongs_to :sentence_card
  belongs_to :game
end
