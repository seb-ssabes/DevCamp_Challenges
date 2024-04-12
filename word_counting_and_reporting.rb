# Create a method that takes a string as an argument and returns the number of words ignoring any non chars like ', ", /, @, $, etc.
# Create a method that takes a string as an argument and returns a hash of total ocurrences of each word



class String
  def total_words
    self.gsub(/\W/, " ").split.size
  end

  def word_list
    words = self.gsub(/\W/, " ").downcase.split
    hash = Hash.new(0)
    words.each do |word|
      if words.include?(word)
        hash[word] = hash[word] + 1
      end
    end
    return hash
  end
end



str = "The sun is out and // the beach looks great! !!! Time for a swim at the beach , right ?"
p str.total_words
p str.word_list
