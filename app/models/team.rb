class Team < ApplicationRecord
  before_save :cal_scores

  def cal_scores
    self.score = (self.wins.to_f/self.total_matches.to_f)*100
  end
end
