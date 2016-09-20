n, q = gets.split(" ").map(&:to_i)

board = Array.new(n+1, 0)
q.times do
  l, r = gets.split(" ").map(&:to_i)
  board[l-1] += 1
  board[r] -= 1
end
add = 0
puts (board.map { |i| add += i; add % 2 }.join).chop
