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

  it "should use divide_and_conquer and find four inversions" do
    array = [1,3,5,2,4,12,11]    
    inversions = InversionsInArray.inversions(DivideAndConquerStrategy.new,array)
    inversions.should == 4
  end

  it "should handle large data sets" do
  array = [];    
  file = File.new("test_data/IntegerArray.txt", "r")
  while (line = file.gets)
    array << line.rstrip!.to_i
  end
  file.close

  inversions_divide = InversionsInArray.inversions(DivideAndConquerStrategy.new,array)
  inversions_divide.should == 2407905288
end

end
