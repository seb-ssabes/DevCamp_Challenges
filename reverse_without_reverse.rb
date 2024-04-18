# Reverse the Letters in a String Without Using the Reverse Method


class String
  def alt_reverse
    reversed_str = ""
    string_length = self.length - 1

    string_length.downto(0).each do |l|
      reversed_str << self[l]
    end
    reversed_str
  end
end

p "Mexico cabron!".alt_reverse

p "Mexico cabron!"[13]
