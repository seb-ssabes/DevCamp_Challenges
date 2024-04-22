# Generate a Hash from Two Arrays

def hash_generator(ar1, ar2)
  hash = Hash.new
  ar1.each_with_index do |x, i|
    hash[x] = ar2[i]
  end
  return hash
end

categories = ["Name", "Song", "Album"]
artist = ["Anderson .Paak", "6 Summers", "Oxnard"]

p hash_generator(categories, artist)
