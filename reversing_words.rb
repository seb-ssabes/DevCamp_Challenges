# Build a method that reverses the words of a string, where words are separated by one or more spaces

# Sample Input "backwards am I"
# Sample Output "I am backwards"

def sentence_reverser(string)
  string.split.reverse.join(" ")
end

p sentence_reverser("backwards am I")
p sentence_reverser("dog lazy the over jumped fox brown quick The")
