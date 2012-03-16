module InversionsInArray
  class InversionsInArrayApi
    def initialize (strategy)
      @strategy = strategy
    end

    def inversions(array)
      @strategy.inversions(array)
    end
  end
end