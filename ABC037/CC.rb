# http://abc044.contest.atcoder.jp/tasks/abc041_a

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
now = a[0..k-1].inject(:+)
res = now
(1..n-k).each do |i|
  now = now - a[i-1] + a[i+k-1]
  res += now
end

p res

