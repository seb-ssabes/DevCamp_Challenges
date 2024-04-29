# Implement the Null Object Pattern


class NullClass
  def method_missing(name, *args, &block)
    self
  end
  def respond_to_missing?(name, include_private = false)
    name.to_s || super
  end
end

object = NullClass.new

# Returns a NullClass object for standard method calls even when not defined
p object.skdjnvsdlfsdnf

# Returns true when asked if it responds to non existent methods
p object.respond_to?(:something_method)

# Returns NullClass object for method calls with arguments, even when not defined
p object.a_method("hey")
