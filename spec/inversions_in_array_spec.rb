require 'spec_helper'

describe InversionsInArray do
	it "should use brute_force and find three inversions" do
		array = [1,3,5,2,4,6]
		inversions = InversionsInArray.inversions(BruteForceStrategy.new,array)
		inversions.should == 3
	end
  it "should use divide_and_conquer and find three inversions" do
    array = [1,3,5,2,4,6]
    inversions = InversionsInArray.inversions(DivideAndConquerStrategy.new,array)
    inversions.should == 3
  end
end