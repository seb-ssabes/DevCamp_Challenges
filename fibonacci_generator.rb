# Biuld a Fibonacci generator
# Fibonachi numbers 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377...

def fibonacci(num)
  (1..num).inject([0, 1]) { |fib| fib << fib.last(2).inject(:+) }
end

p fibonacci(15)
