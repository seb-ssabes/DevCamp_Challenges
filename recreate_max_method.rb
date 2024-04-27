# Build a method that recreates the max method

require "benchmark"

def max_method(ar)
  ar.sort.last # "slow" version. Sort takes extra time
end

def max_method_2(ar)
  new_max = 0
  ar.each do |i|
    if i > new_max
      new_max = i
    end
  end
  new_max
end

array = [2, 4, 40, 60, 1, 25, 100, 3456, 223556, 2, 33445]


Benchmark.bm(10) do |x|
  x.report("Sorted: ") { max_method(array) }
  x.report("Each: ") { max_method_2(array) }
  x.report("Max: ") { array.max }
end

p max_method(array)
p max_method_2(array)
