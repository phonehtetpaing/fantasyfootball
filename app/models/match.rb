class Match < ApplicationRecord
  has_many :games
  validates_presence_of :team1_id, :team2_id
  validates :games_count, presence: true,
    :numericality => { :greater_than => 0, :less_than => 4}
end
