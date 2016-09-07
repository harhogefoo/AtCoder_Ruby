# http://abc044.contest.atcoder.jp/tasks/abc041_a

n, x = gets.split(" ").map(&:to_i)
puts [x - 1, n - x].min

