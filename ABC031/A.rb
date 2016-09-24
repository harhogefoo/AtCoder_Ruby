attack, defense = gets.split(" ").map(&:to_i)

a = (attack + 1) * defense
b = attack * (defense + 1)

if a < b
  puts b
else
  puts a
end