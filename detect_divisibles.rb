# Build a method that returns the first number divisible by num1 and num2 in a range


def mod_checker(arr, num1, num2)
  arr.detect do |mod|
    mod % num1 == 0 && mod % num2 == 0
  end
end

p mod_checker(1..200, 12, 16)
p mod_checker(1..120000, 200, 73)
