# Write a method that removes duplicates from an array without using .uniq

def remove_duplicates(ar)
  ar.each_with_object([]) do |element, array|
    array << element unless array.include?(element)
  end
end


array = [1, 2, 3, 4, 2, 1, 2, 3, 4, 6, 7, 8]

p remove_duplicates(array)
