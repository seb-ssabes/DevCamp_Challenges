#  Create a methos that accurately calculates large decimals
require "bigdecimal"

# Method 1 ---> Not 100% accurate
def large_decimal_calculator(x, y)
  x.to_f * y.to_f
end

# Method 2 ----> Accurate
def large_decimal_calculator_accurate(x, y)
  (BigDecimal(x) * BigDecimal(y)).to_s("F")
end

val_1 = "10.09893857683292040845667"
val_2 = "4.469862859509603019474889"

p large_decimal_calculator(val_1, val_2)
p large_decimal_calculator_accurate(val_1, val_2)
