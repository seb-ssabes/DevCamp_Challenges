# Build a method that returns the largest/shortest words in an array

def largest_word(ar, num)
  ar.max_by(num) do |s|
    s.length
  end
end

def shortest_word(ar, num)
  ar.min_by(num) do |s|
    s.length
  end
end


strings = %w{this is a phrase for the sake of this exercise}

p largest_word(strings, 3)
p shortest_word(strings, 3)
