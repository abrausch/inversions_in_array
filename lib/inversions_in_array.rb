require "inversions_in_array/version"
require "inversions_in_array/inversions_in_array_api"
require "inversions_in_array/brute_force_strategy"
require "inversions_in_array/divide_and_conquer_strategy"

module InversionsInArray
  def self.inversions (strategy,array)
    InversionsInArrayApi.new(strategy).inversions(array)
  end
end
