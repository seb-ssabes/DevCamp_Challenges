#  Create a method that takes an integer and returns a fizz buzz hash replacing any number (index - key) divisible by three with the word "fizz", and any number divisible by five with the word "buzz", and any number divisible by both three and five with the word "fizzbuzz".

# Pseudo code:
# 1 ---> Convert integer into a hash based in index. For example: {1=>1, 2=>2, 3=>3}
# 2 ---> Replace values divisible by 3, 5 and (3 and 5) by conditional words


# Method 1

def fizz_buzz(num)
  ar = (1..num).to_a
  hash = Hash.new(0)
  ar.each_with_index do |x, i|
    hash[:"#{i + 1}"] = x
  end
  new_hash = hash.transform_keys {|key| key.to_s.to_i}
  new_hash
  new_hash.transform_values! do |value|
    if value % 3 == 0 && value % 5 == 0
      "fizzfuzz"
    elsif value % 3 == 0
      "fizz"
    elsif value % 5 == 0
      "fuzz"
    else
      value
    end
  end
  new_hash
end


# Method 2

def fizz_buzz_2(num)
  hash = {}
  1.upto(num).each do |e|
    if (e % 3 == 0) && (e % 5 == 0)
      hash[e] = "FizzBuzz"
    elsif e % 3 == 0
      hash[e] = "Fizz"
    elsif e % 5 == 0
      hash[e] = "Buzz"
    else
      hash[e] = e
    end
  end
  hash
end

p fizz_buzz(40)
p fizz_buzz_2(40)
