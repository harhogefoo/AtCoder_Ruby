n, q = gets.split(" ").map(&:to_i)

h_l = Hash.new(0)
h_r = Hash.new(0)
board = Array.new(n, 0)
q.times do
  l, r = gets.split(" ").map(&:to_i)
  h_l[l] += 1
  h_r[r] += 1
end

add = 0
(0...board.length).each do |i|
  add += h_l[i+1]
  board[i] = add % 2
  add -= h_r[i+1]
end

puts board.join
