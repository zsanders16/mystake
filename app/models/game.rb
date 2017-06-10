class Game < ApplicationRecord
    has_many :players, dependent: :destroy
    has_many :game_cards, dependent: :destroy
end
