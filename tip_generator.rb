# Create a robust tip generator that accepts integers and strings and manages edge cases.
class String
  def integer?
    return true if self =~ /^[1-9]\d*(\.\d+)?$/ # true if self contains a number or a decimal
    false
  end
end

module Tippy
  class Builder
    def initialize(total:, gratuity:)
      @total = total
      @gratuity = gratuity
    end

    def generate
      return calculation if number_based?
      string_based
    end

    def number_based?
      (@gratuity.is_a?(Numeric)) || (@gratuity.integer?)
    end

    def string_based
      case @gratuity.downcase
      when "high" then calculation(20)
      when "standard" then calculation(10)
      when "low" then calculation(5)
      end
    end

    def calculation(gratuity = @gratuity)
      @total += @total * (gratuity.to_f / 100)
    end
  end
end

tip1 = Tippy::Builder.new(total: 200, gratuity: 18)
tip2 = Tippy::Builder.new(total: 68, gratuity: 5)
tip3 = Tippy::Builder.new(total: 74, gratuity: 10)
tip4 = Tippy::Builder.new(total: 15, gratuity: 12)

tip5 = Tippy::Builder.new(total: 200, gratuity: "HIGH")
tip6 = Tippy::Builder.new(total: 200, gratuity: "STANDARD")
tip7 = Tippy::Builder.new(total: 200, gratuity: "LOW")

tip8 = Tippy::Builder.new(total: 200, gratuity: "18")
tip9 = Tippy::Builder.new(total: 200, gratuity: "")

p tip1.generate
p tip2.generate
p tip3.generate
p tip4.generate
p tip5.generate
p tip6.generate
p tip7.generate
p tip8.generate
