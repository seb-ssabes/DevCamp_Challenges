# Add the Next Letter or Number in a String Sequence

def increment_value(str)
  str + str.next.slice(-1)
end

p increment_value("abcde")
p increment_value("12345")


# create arrays
array1 = [1, 2, 3, 4, 5]
array2 = ["a", "b", "c", "d", "e"]
array3 = ["cat", "dog", "cow", "rat", "fox"]
array4 = [true, false, nil]
array5 = ["", "nil", "false", "true"]

# call `slice()` method and save returned sub-arrays
a = array1.slice(1)       # 2nd element
b = array2.slice(2, 3)    # from 3rd element, return 3
c = array3.slice(1, 1)    # from 2nd element, return only 1
d = array4.slice(0, 5)    # from 1st element, return all elements
e = array5.slice(2)       # return 3rd element

# print returned values
puts "#{a}"
puts "#{b}"
puts "#{c}"
puts "#{d}"
puts "#{e}"
