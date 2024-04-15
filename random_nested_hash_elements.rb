#  Extract a Random Element from a Collection of Arrays Nested in a Hash


menu = {
  "entrance": ["Ceviche", "Empanada", "Chilean Salad"],
  "main": ["Pastel de Choclo", "Cazuela", "Reineta"],
  "dessert": ["Brazo de Reina", "Alfajor", "Torta"]
}

# Method 1 for a random element of each category (3 elements)

def daily_special_menu(menu)
  "Entrance: #{menu[:entrance].sample}. Main course: #{menu[:main].sample}. Dessert: #{menu[:dessert].sample}"
end

# Method 2 for one random element of the whole hash (1 element)

def daily_special_meal(menu)
  ar = []
  menu.map do |category|
    ar.push(category.last)
  end.flatten.sample
end


p daily_special_menu(menu)
p daily_special_meal(menu)
