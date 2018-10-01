require "house-prices-exercise"

describe "increase_value_by_1" do
  it "returns { a: 2, b: 3 } when passed { a: 1, b: 2 }" do
    expect(increase_value_by_1({ a: 1, b: 2 })).to eq ({ a: 2, b: 3 })
  end
end
