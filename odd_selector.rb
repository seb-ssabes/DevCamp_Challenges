#  Create a method that returns an array of selected odd numbers

# Method 1
def odd_selector_1(r)
  ar = []
  r.each do |i|
    if i % 2 != 0
      ar << i
    end
  end
  ar
end

# Method 2

def odd_selector_2(r)
  ar = []
  r.each do |i|
    if i.odd?
      ar << i
    end
  end
  ar
end

# Method 3

def odd_selector_3(r)
  r.select(&:odd?)
end

range = Array(1..20)

p odd_selector_1(range)
p odd_selector_2(range)
p odd_selector_3(range)
