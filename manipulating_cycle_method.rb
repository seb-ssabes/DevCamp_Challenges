# Iterate trough an array a variable number of times and return the full set of elements

def cloned_cycle(collection, num)
  final_items = []

  num.times do
    collection.each do |x|
      final_items << x
    end
  end

  final_items
end



p [1, 2, 3].cycle(3) # --------> #<Enumerator: [1, 2, 3]:cycle(3)>
p [1, 2, 3].cycle(3).to_a #----> [1, 2, 3, 1, 2, 3, 1, 2, 3]

p cloned_cycle([1, 2, 3], 5)
