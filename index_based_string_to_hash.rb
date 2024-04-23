# Build a method that takes in a string and returns an index based hash of the string's elements.

def string_to_hash(str)
  string_array = str.gsub(/\W/, " ").downcase.split
  hash = Hash.new
  string_array.each_with_index do |x, i|
    hash["#{i + 1}"] = x
  end
  hash
end

phrase = "Jesus! This place is chill and cool."

p string_to_hash(phrase)
