s = gets.chomp
target = ["A", "B", "C", "D", "E", "F"]
result = Array.new
target.each do |a|
  result.push(s.count(a))
end
puts result.join(" ")