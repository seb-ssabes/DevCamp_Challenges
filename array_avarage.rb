# Create a method that takes in an array and returns the avarage value of all the elements

def average_value(ar)
  ar.sum / ar.size
end

def average_value_2(ar)
  ar.inject(&:+) / ar.size
end

array = [4, 60, 100, 35]
p average_value(array)
p average_value_2(array)
