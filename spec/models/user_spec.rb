require 'rails_helper'

RSpec.describe User, type: :model do           
  subject {
    described_class.new(firstname: "Phone", lastname: "Paing")
  }

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end
  it "is not valid without a firstname" do
    subject.firstname = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a lastname" do
    subject.lastname = nil
    expect(subject).to_not be_valid
  end
end

