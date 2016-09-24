n = gets.chomp.split("+")

count = 0
n.each do |input|
  next if input == "0"
  next if eval(input) == 0
  count += 1
end
puts count
