# http://abc044.contest.atcoder.jp/tasks/abc041_a

n, q = gets.split.map(&:to_i)
ary = Array.new(n, 0)
q.times do
  l, r, t = gets.split.map(&:to_i)
  ary[(l-1)..(r-1)] = Array.new(r - l + 1, t)
end
puts ary


