#  Build a Pseudo Random Number Generator that Follows a Specific Sequence and doesn't repeat the result.

# Rand 10 for example is not perfectly accurate because any random number from 1-9 can come up more than once.

# p srand 1 (setting up seed, will allow us to always get the same random number sequence)
# p rand 30
# p rand 30
# p rand 30
# p rand 30

def pseudo_random(num)
  srand 1
  fiber = Fiber.new do
    num.times do
      Fiber.yield rand 100
    end
  end
end

i = pseudo_random(10)

p i.resume
p i.resume
p i.resume
