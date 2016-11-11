n = gets.to_i
a = gets.split(" ").map(&:to_i)

count = 0
n.times do |i|
  if a[a[i] - 1] - 1 == i
    count += 1
  end
end
puts count / 2
