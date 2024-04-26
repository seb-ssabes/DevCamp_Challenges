# Build a breadcrumb generator

def breadcrumb_generator(ar)
  ar.join(" / ")
end


items = ["String 1", "String 2", "String 3"]

p breadcrumb_generator(items)
