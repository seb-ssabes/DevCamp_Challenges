# Build a Dynamic Sum Method in Ruby.
# Example ----> 5
# 1,2,3,4,5 -----> 1+2=3, 3+3=6, 6+4=10, 10+5=15. Return 15.

def d_sum(num)
  1.upto(num).inject(&:+)
end


def d_sum_1(num)
  1.upto(num).inject do |sum, n|
    sum + n
  end
end



p d_sum(12)
p d_sum_1(12)
