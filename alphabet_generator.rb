#  Generate an array with all alphabet characters

#  Method 1

def alphabet
  ar = []
  ("a".."z").each do |x|
    ar.push(x)
  end
  ar
end

# Method 2

def alphabet_better
  ("a".."z").to_a
end


p alphabet()
p alphabet_better()
