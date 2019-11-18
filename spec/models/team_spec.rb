require 'rails_helper'

RSpec.describe Team, type: :model do           
  subject {
    described_class.new(player_count: 1, name: "Man-U", score: 0, total_matches: 4, wins: 3)
  }

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is not valid without a player_count" do
    subject.player_count= nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a valid player_count" do
    subject.player_count= 3
    expect(subject).to_not be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without score" do
    subject.score = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a total_matches" do
    subject.total_matches = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a wins" do 
    subject.wins= nil
    expect(subject).to_not be_valid
  end
  it "cannot be zero in score  after cal_scores" do
    subject.cal_scores
    expect(subject.score).to_not be_zero
  end
end
