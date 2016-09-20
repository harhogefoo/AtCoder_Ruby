# This answer is TLE: 60 point
n, q = gets.split(" ").map(&:to_i)

board = Array.new(n, 0)
q.times do
  l, r = gets.split(" ").map(&:to_i)
  mask = Array.new(n, 0)
  l -= 1; r -=1
  mask[l..r] = ('1' * mask[l..r].length).split("").map(&:to_i)
  board = board.zip(mask).map { |f, s| f + s }

  print "#{board}\n"
end
board.map! { |b| b % 2 == 0 ? 0 : 1}
puts board.join

