#!/usr/bin/env ruby

require 'benchmark'
require 'inversion_of_array.rb'

array = []
for i in 1..10000
  array << i
end
array.shuffle!

time = Benchmark.measure do
  inversions = InversionOfArray.inversions(DivideAndConquerStrategy.new,array)
  p "Inversions #{inversions}"
end

p time