#  Create a method that converts a Hash into a URL Friendly String

class Hash
  # Method 1
  def param_converter
    "#{keys[0]}=#{self[:topic]}&#{keys[1]}=#{self[:team]}"
  end
  #Method 2
  def param_converter1
    self.map do |i| i * "=" end * "&"
  end
end

hash = { :topic => "baseball", :team => "astros"}

# expects: "topic=baseball&team=astros"

p hash.param_converter
p hash.param_converter1
