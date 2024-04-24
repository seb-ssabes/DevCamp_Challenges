# Use blocks for dinamically format content

def lineup_generator(list, &block)
  list.map.with_index(1) do |player, index|   #index(1) ----> starting point
    yield(index, player)
  end
end

players = ["SSABES", "FallingWheat", "Diegrungex"]

p lineup_generator(players) { |x, y| "#{x} - #{y}" }
