#  Create a method that returns an array of all the months in the year and another
# that returns all the days of the week.

require "date"

def months
  Date::MONTHNAMES[1..12]
end

def days
  Date::DAYNAMES[0..6].rotate(1)
end

# p Date.new(1991,5).strftime("%B")

p months()
p days()
