class Team < ApplicationRecord
  validates_presence_of :name, :score, :total_matches, :wins
  validates :player_count, presence: true,
    :numericality => { :greater_than => 0, :less_than => 3}
  before_save :cal_scores

  def cal_scores
    self.score = (self.wins.to_f/self.total_matches.to_f)*100
  end
end
