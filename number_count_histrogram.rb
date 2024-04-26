# Build a hash histogram of integer counts

# Method 1

def count_histogram(ar)
  hash = Hash.new(0)
  ar.each do |num|
    hash[num] += 1
  end
  hash
end


# Method 2

def count_histogram_2(ar)
  ar.inject(Hash.new(0)) do |hash, element|
    hash[element] += 1
  hash
  end
end

array = [4, 5, 7, 2, 3, 4, 6, 7, 7, 1, 2, 2,
         3, 9, 8, 9, 8, 5, 2, 2, 4]


p count_histogram(array)
p count_histogram_2(array)
