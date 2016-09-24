n = gets.chomp.split("+")

count = 0
n.each do |input|
  if input.include?("0")
    count += 1
  end
end
puts n.size - count
