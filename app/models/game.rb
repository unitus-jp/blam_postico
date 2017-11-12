class Game < ApplicationRecord
  has_many :suggestions, foreign_key: :game_id, primary_key: :id
end
