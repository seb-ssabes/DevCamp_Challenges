# Create a method that takes a string and returns true if the string is a palindrome.


# Method 1
def palindrome?(str)
  downcased_str = str.downcase
  if downcased_str == downcased_str.reverse || str == str.reverse
    return true
  else
    return false
  end
end

# Method 2
def palindrome2?(str)
  str.downcase == str.downcase.reverse
end


p palindrome2?("Tenet")
p palindrome2?("tenet")
p palindrome2?("Chris")
