n, a, b = gets.chomp.split(" ").map(&:to_i)
count = 0
n.times do |i|
  x = gets.to_i
  next if a <= x  && x < b
  count += 1
end

puts count
