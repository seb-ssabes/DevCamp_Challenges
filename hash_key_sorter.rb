# Sort the keys of a hash by its length

def hash_sorter(hash)
  #grab the keys
  #convert all elements to string
  #sort by length
  hash.keys.map(&:to_s).sort_by do |e|
  e.length
  end
end


data = {
  some_key: "Anything",  #symbol
  "string_key" => "Something", #string
  3455 => "Does not matter" #integer
}

p hash_sorter(data)
