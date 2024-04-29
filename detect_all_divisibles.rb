# Build a method that returns all numbers divisible by num1 and num2 in a range

def mod_checker(arr, num1, num2)
  arr.select do |mod|
    mod % num1 == 0 && mod % num2 == 0
  end
end

p mod_checker(1..200, 12, 16)# ------> [48, 96, 144, 192]
p mod_checker(1..120000, 200, 73)# --> [14600, 29200, 43800, 58400, 73000, 87600, 102200, 116800]

