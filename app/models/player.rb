class Player < ApplicationRecord
  belongs_to :game
  has_many :player_cards
end
