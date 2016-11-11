
ary = [1, 2, 3, 4, 5, 6]

n = gets.to_i % 30

n.times do |i|
  a = i % 5
  b = i % 5 + 1
  ary[a], ary[b] = ary[b], ary[a]
end

puts ary.join("")
