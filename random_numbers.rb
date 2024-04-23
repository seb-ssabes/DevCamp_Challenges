# Generate an Array of x random numbers ranging from 1 to 1000

# Method 1

def random_num(x)
  ar = []
  x.times do |i|
    ar.push(rand 1000)
  end
  return ar
end

# Method 2

def random_nums(x)
  Array.new(x) {rand 1000}
end



p random_num(35)
p random_nums(15)
