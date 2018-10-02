require "house-prices-exercise.rb"

describe "display the districts" do
  it "returns the list of districts" do
    expect(get_districts).to eq (["Basingstoke and Deane", "Camden", "Conwy", "Luton", "Melton", "Sheffield", "Stratford-on-Avon", "Sunderland", "Taunton Deane", "Test Valley"])
  end
end
