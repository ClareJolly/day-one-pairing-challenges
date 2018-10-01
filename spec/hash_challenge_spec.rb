require "hash_challenge"

describe "increase_value_by_1" do
  it "returns { a: 2, b: 3 } when passed { a: 1, b: 2 }" do
    expect(increase_value_by_1({ a: 1, b: 2 })).to eq ({ a: 2, b: 3 })
  end
end

describe "increase_value_by_1" do
  it "returns { a: 3, b: 4, c: 6 } when passed { a: 2, b: 3, c: 5 }" do
    expect(increase_value_by_1({ a: 2, b: 3, c: 5 })).to eq ({ a: 3, b: 4, c: 6 })
  end
end

describe "increase_value_by_1_alt" do
  it "returns { a: 2, b: 3, c: 4 } when passed { a: 1, b: 2, c: 3 }" do
    expect(increase_value_by_1({ a: 1, b: 2, c: 3 })).to eq ({ a: 2, b: 3, c: 4 })
  end
end

describe "sort_values" do
  it "returns { a: 1, b: 2, c: 5 } when passed { a: 2, b: 5, c: 1 }" do
    expect(sort_values({ a: 2, b: 5, c: 1 })).to eq({ a: 1, b: 2, c: 5 })
  end
end

describe "sort_values" do
  it "returns { a: 2, b: 6, c: 8 } when passed { a: 8, b: 2, c: 6 }" do
    expect(sort_values({ a: 8, b: 2, c: 6 })).to eq({ a: 2, b: 6, c: 8 })
  end
end

describe "sort_values" do
  it "returns { m: 1, e: 2, l: 3 } when passed {m: 2, e: 3, l: 1 }" do
    expect(sort_values({m: 2, e: 3, l: 1 })).to eq({ m: 1, e: 2, l: 3 })
  end
end

describe "return_sorted_values" do
  it "returns [1, 2, 5] when passed { a: 2, b: 5, c: 1 }" do
    expect(return_sorted_values({ a: 2, b: 5, c: 1 })).to eq([1, 2, 5])
  end
end

describe "return_sorted_values" do
  it "returns [0, 7, 10] when passed { a: 10, b: 0, c: 7 }" do
    expect(return_sorted_values({ a: 10, b: 0, c: 7 })).to eq([0, 7, 10])
  end
end

describe "swap_key_value" do
  it "returns { ""1""=>""a"", ""2""=>""b"", ""3""=>""c"" } when passed { a: 1, b: 2, c: 3 } " do
    expect(swap_key_value({ a: 1, b: 2, c: 3 })).to eq({ "1"=>"a", "2"=>"b", "3"=>"c" })
  end
end

describe "swap_key_value" do
  it "returns { ""5""=>""m"", ""7""=>""e"", ""9""=>""l"" } when passed { m: 5, e: 7, l: 9 } " do
    expect(swap_key_value({ m: 5, e: 7, l: 9 })).to eq({ "5"=>"m", "7"=>"e", "9"=>"l" })
  end
end
