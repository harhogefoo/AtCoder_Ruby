k, t = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

count = 0
a.each do |i|
  count -= i
  count = count.abs
end
puts count - 1
