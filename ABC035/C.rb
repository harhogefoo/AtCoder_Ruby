# This answer is TLE: 60 point
n, q = gets.split(" ").map(&:to_i)

board = '0' * n
q.times do
  l, r = gets.split(" ").map(&:to_i)
  mask = '0' * n
  l -= 1; r -=1
  mask[l..r] = '1' * mask[l..r].length
  board = sprintf("%0#{n}b", (board.to_i(2) ^ mask.to_i(2)))
end
puts board
