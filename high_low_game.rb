# Build a program game that generates a prompt for the userto guess a number. If the user's guess is lower or higher than the correct number, the program will reply "Higher/Lower - Guess again".

p "Welcome to the 'Guess a number' lil' game!👾"
p "Guess a number between 1 and 24"

answer = gets.chomp.to_i
rand_number = rand(1..24)

until answer == rand_number do
  if answer > rand_number
    p "Lower - guess again"
  elsif answer < rand_number
    p "Higher - guess again"
  end
  answer = gets.chomp.to_i
end

p "Rocknrolla!!"
