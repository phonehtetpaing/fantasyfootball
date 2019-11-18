class Game < ApplicationRecord
  belongs_to :match
  validates_presence_of :winner_id, :score, :loser_id
end
