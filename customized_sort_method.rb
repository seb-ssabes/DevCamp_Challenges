# Customize the ruby sort method to force an element to the end of the sorted array

def weird_alphabet(letter)
  alphabet = ("a".."z").to_a
    if alphabet.include?(letter)
      alphabet.delete(letter)
      alphabet.append(letter)
    end
  alphabet
end

p weird_alphabet("s")
