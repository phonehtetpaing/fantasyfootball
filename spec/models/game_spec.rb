require 'rails_helper'

RSpec.describe Game, type: :model do           
  let(:match) { Match.new( team1_id: 1, team2_id: 2,winning_team_id: nil, games_count: 0) }
  it { should belong_to(:match) }
  subject {
    described_class.new(winner_id:1, match: match, score: 0, loser_id: 2)
  }

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end
  it "is not valid without a winner_id" do
    subject.winner_id = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a match_id" do
    subject.match = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a score" do
    subject.score = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a loser_id" do 
    subject.loser_id= nil
    expect(subject).to_not be_valid
  end
end
