# Rotate Elements in an Array by taking two arguments. An array and a number (number for amount of position shifting by index).
# For example [1, 2, 3] ---> 2 will be [3, 1, 2]. Each integer shifted 2 positions to the left.


# Official method (thanks Ruby)
def shift_position(ar, num)
  ar.rotate(num)
end

# Unofficial method

def shift_position_1(ar, num)
  num = num % ar.length
  new_array = Array.new(ar.length)

  ar.each_with_index do |element, index|
    new_index = (index - num) % ar.length
    new_array[new_index] = element
  end

  new_array
end

array = [3, 8, 2, 4]

p shift_position(array, 3)
p shift_position_1(array, 3)
