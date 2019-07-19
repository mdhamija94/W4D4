require "tdd"
require "byebug"

describe "#my_uniq" do
  # it "should take in an array as an argument" do
  #   expect{ my_uniq([1,2,1,3,3]) }.to_not raise_error(ArgumentError)
  # end

  it "should raise an error when argument is not an array" do
    expect { my_uniq("dog") }.to raise_error
  end

  it "should return a new array with duplicates removed" do
    expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    expect(my_uniq([100, 1, 1, 30, 1, 1, 30, 100])).to eq([100, 1, 30])
  end

  it "should return an empty array when passed an empty array" do
    expect(my_uniq([])).to be_empty
  end
end

describe "Array#two_sum" do
  it "should return a 2-D array where each element is a pair of positions where the elements sum to zero" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "should return index-pairs dictionary-wise with smaller first elements first, then smaller second elements" do
    expect([5, -5, -5, 5].two_sum).to eq([[0,1], [0,2], [1,3], [2,3]])
  end

  it "should not return spurious pairs" do
    expect([1, 0, 2].two_sum).to eq([])
  end
end

describe "#my_transpose" do
  subject(:test_array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  it "should return a new array with columns and rows reversed" do
    expect(my_transpose(test_array)).to eq(test_array.transpose)
  end

  it "should not call the built in #transpose method" do
    debugger
    expect(test_array).to_not receive(:transpose)
    my_transpose(test_array)
  end
end