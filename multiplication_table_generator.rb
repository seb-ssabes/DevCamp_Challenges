# Build a multiplication table generator

def multiplication_table(num)
  hash = Hash.new
  1.upto(num).each do |i|
    products = []
    (1..10).each do |e|
      products << e * i
    end
    hash[i] = products
  end
  hash
end

p multiplication_table(8)

# {1=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2=>[2, 4, 6, 8, 10, 12, 14, 16, 18, 20], 3=>[3, 6, 9, 12, 15, 18, 21, 24, 27, 30], 4=>[4, 8, 12, 16, 20, 24, 28, 32, 36, 40], 5=>[5, 10, 15, 20, 25, 30, 35, 40, 45, 50], 6=>[6, 12, 18, 24, 30, 36, 42, 48, 54, 60], 7=>[7, 14, 21, 28, 35, 42, 49, 56, 63, 70], 8=>[8, 16, 24, 32, 40, 48, 56, 64, 72, 80]}
