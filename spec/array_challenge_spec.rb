require 'array_challenge'

describe "increase_by_one" do
  it "returns [2, 3, 4, 5, 6] when passed [1, 2, 3, 4, 5]" do
    expect(increase_by_one([1, 2, 3, 4, 5])).to eq ([2, 3, 4, 5, 6])
  end
end

describe "increase_by_1_alt" do
  it "returns [3, 4, 5, 6, 7, 8] when passed [2, 3, 4, 5, 6, 7]" do
    expect(increase_by_one([2, 3, 4, 5, 6, 7])).to eq ([3, 4, 5, 6, 7, 8])
  end
end

describe "sort_array" do
  it "returns [1, 2, 3, 4, 5] when passed [1, 3, 5, 4, 2]" do
    expect(sort_array([1, 3, 5, 4, 2])).to eq ([1, 2, 3, 4, 5])
  end
end

describe "sort_array_alt" do
  it "returns [3, 4, 5] when passed [5, 3, 4]" do
    expect(sort_array([5, 3, 4])).to eq ([3, 4, 5])
  end
end

describe "sort_and_increase" do
  it "returns [2, 3, 4, 5, 6] when passed [1, 3, 5, 4, 2]" do
    expect(sort_and_increase([1, 3, 5, 4, 2])).to eq([2, 3, 4, 5, 6])
  end
end

describe "sort_and_increase_alt" do
  it "returns [2, 4, 6] when passed [5, 3, 1]" do
    expect(sort_and_increase([5, 3, 1])).to eq([2, 4, 6])
  end
end

describe "sum_array" do
  it "returns 15 when passed [1, 2, 3, 4, 5]" do
    expect(sum_array([1, 2, 3, 4, 5])).to eq(15)
  end
end

describe "sum_array_alt" do
  it "returns 20 when passed [1, 2, 3, 4, 5, 5]" do
    expect(sum_array([1, 2, 3, 4, 5, 5])).to eq(20)
  end
end

describe "double_sum" do
  it "returns 30 when passed [1, 2, 3, 4, 5]" do
    expect(double_sum([1, 2, 3, 4, 5])).to eq(30)
  end
end

describe "double_sum_alt" do
  it "returns 36 when passed [4, 6, 8]" do
    expect(double_sum([4, 6, 8])).to eq(36)
  end
end
