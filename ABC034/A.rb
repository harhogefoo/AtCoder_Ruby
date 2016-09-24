x, y = gets.split(" ").map(&:to_i)

if x < y
  puts "Better"
else
  puts "Worse"
end
