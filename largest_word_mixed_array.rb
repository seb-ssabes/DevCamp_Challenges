# Build a method that returns the largest/shortest words in an array of mixed strings


def longest_word(arr)
  arr.flat_map(&:split).max_by(&:length)
end

sentences = ["A sentence", "broken into several", "array elements"]

p longest_word(sentences)


# sentences_flatten = sentences.flat_map(&:split)
# p sentences_flatten
# ["A", "sentence", "broken", "into", "several", "array", "elements"]
