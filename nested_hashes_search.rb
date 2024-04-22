# Check if a Value Exists in a Set of Nested Hashes

books = [
  {
    :title => "The Blade Itself",
    :author => "Joe Abercrombie"
  },
  {
    :title => "The Girl With The Dragon Tattoo",
    :author => "Stieg Larsson"
  }
]


class Array
  def value_included?(str)
    each do |s|
      if s.has_value?(str)
        return true
      end
    end
    false
  end
end

p books.value_included?("Stieg Larsson")
