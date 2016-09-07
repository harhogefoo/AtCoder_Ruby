# http://abc044.contest.atcoder.jp/tasks/abc042_a

ary = gets.split(" ").map(&:to_i)
ans = "NO"
ans = "YES" if ary.count(5) == 2 and ary.count(7) == 1
puts ans
