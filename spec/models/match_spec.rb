require 'rails_helper'

RSpec.describe Match, type: :model do           
  it { should have_many(:games) }
  subject {
    described_class.new(team1_id: 1, team2_id: 2,winning_team_id: nil, games_count: 2)
  }

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end
  it "is not valid without a team1_id" do
    subject.team1_id = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a team2_id" do
    subject.team2_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a games_count" do
    subject.games_count = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a valid games_count" do
    subject.games_count= 4
    expect(subject).to_not be_valid
  end
end
