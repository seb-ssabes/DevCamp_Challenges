# Write a method `array_to_hash` which takes an `Array` as an argument and returns a `Hash`.

def hash_converter(array)
  hash = Hash.new(0)
  array.each_with_index do |x, i|
    hash[:"#{i + 1}"] = x
  end
  return hash
end

cities = ["Berlin", "Melbourne", "Arica", "La Serena"]

p hash_converter(cities)
