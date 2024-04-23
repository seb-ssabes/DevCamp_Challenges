# Build an interval timer method
def interval(sec)
  loop do
    yield
    sleep(sec)
  end
end

interval(2) do
  puts "Hola Mexico!"
end
