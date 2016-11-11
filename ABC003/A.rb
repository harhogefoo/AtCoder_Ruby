n = gets.to_i

total = 0
n.times do |i|
  total += ((i + 1) * 10000) / n.to_f
end
puts total.to_i
