#  Generate an array with all alphabet characters

def alphabet
  ar = []
  ("a".."z").each do |x|
    ar.push(x)
  end
  ar
end

p alphabet()
