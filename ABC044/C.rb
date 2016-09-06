# http://abc044.contest.atcoder.jp/tasks/abc044_c
# 最速の解答を写した
# 予め平均値に達するものを引いておいた配列を用意する
# 8 5
# 3 6 2 8 7 6 5 9
# [-2, 1, -3, 3, 2, 1, 0, 4]
# hashを用意しておき，キーを足して0になるものを加算していく
# h = Hash.new(0)
# h[0] = 1  # {0 => 1}
# n.times do |i|
# h.each do |e, v|  # 0, 1
# hh[-2 + 1] += 1   # {0 => 1, -2 => 1}
# h.each do |e, v|  # 0, 1
# hh[1 + 0] += 1


n, m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map{ |i| i.to_i - m}
print "#{a}\n"

h = Hash.new(0)
h[0] = 1
hh = h.dup
n.times do |i|
  puts h
  h.each do |e, v|
    hh[a[i] + e] += v
  end
  h = hh.dup
end
puts h[0] - 1

