# Sum an Array of String Based Integers


# Method 1

def string_sum(ar)
  sum = 0
  ar.each do |x|
    sum += x.to_i
  end
  sum
end


# Method 2

def string_sum_two(ar)
  ar.map(&:to_i).inject(&:+)
end


array = ("1".."20").to_a

p string_sum(array)
p string_sum_two(array)
