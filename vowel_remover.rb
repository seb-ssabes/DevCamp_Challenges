# Create a method that removes all the vowels from the alphabet

# Method 1

def vowel_remover(arr)
  vowels = ["a", "e", "i", "o", "u"]
  arr.each do |letter|
    if vowels.include?(letter)
      arr.delete(letter)
    end
  end
  arr
end


# Method 2

def vowel_remover_2(arr)
  arr.grep(/[^aeiou]/)
end



alphabet = ("a".."z").to_a

p vowel_remover(alphabet)
p vowel_remover_2(alphabet)
