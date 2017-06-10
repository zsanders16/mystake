class PlayerCard < ApplicationRecord
  belongs_to :answer_card
  belongs_to :player
end
