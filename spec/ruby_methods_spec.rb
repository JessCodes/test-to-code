require_relative '../ruby_methods.rb'

describe "has_string?" do
  it "returns true if array has a string" do
    arr = [:rick, "the", 42]
    expect(has_string?(arr)).to eq true
  end

  it "returns false if array doesn't have a string" do
    arr = [:shut, :em, :down]
    expect(has_string?(arr)).to eq false
  end
end

describe "average" do
  it "calculates average" do
    arr = [1, 2, 3, 4]
    expect(average(arr)).to eq 2.5
  end
end


describe "super_compact" do
  it "removes nil and empty elements" do
    arr = [:jen, "", nil, [], "katee"]
    expected = [:jen, "katee"]
    expect(super_compact(arr)).to eq expected
  end
end


describe "tight_zip" do
  it "zips arrays of unequal length" do
    a = [1, 2, 3, 4]
    b = %w|a b|
    expected = [1, "a", 2, "b", 3, 4]
    expect(tight_zip(a,b)).to eq expected
  end
end


describe "first_duplicate" do
  it "returns first duplicate in an array" do
    arr = %w|b c d c a a a|
    expect(first_duplicate(arr)).to eq "c"
  end
end


describe "symbolize" do
  it "creates an array of symbols" do
    arr = %w|b c d c a|
    expected = [:b, :c, :d, :c, :a]
    expect(symbolize(arr)).to eq expected
  end
end


describe "index_of_max" do
  it "returns index of largest array element" do
    arr = [1, 99, 10, 104, 5]
    expect(index_of_max(arr)).to eq 3
  end
end


describe "merge" do
  it "converts array of hashes to a hash" do
    arr = [
      { a: 1, b: 2 },
      { a: 3, b: 24, c: 4 }
    ]
    expected = {
      a: [1, 3],
      b: [2, 24],
      c: [4]
    }
    expect(merge(arr)).to eq expected
  end
end