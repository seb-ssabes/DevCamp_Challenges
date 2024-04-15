# Build a currency converotr that takes in an amount and a location

def currency_convertor(amount, location)
  case location
  when "US" then "$%.2f" % amount
  when "UK" then ("£%.2f" % amount).gsub(".", ",")
  when "Japan" then "¥%.0f" % amount
  end
end

# money = 10.2

# p "$%.2f" % money

p currency_convertor(1234.5, "US")
p currency_convertor(5000, "UK")
p currency_convertor(5000, "Japan")
