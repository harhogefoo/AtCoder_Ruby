# http://abc044.contest.atcoder.jp/tasks/abc041_c


n = gets.to_i
a = gets.split(" ").map(&:to_i)
h = Hash.new
n.times do |i|
  h[a[i]] = i
end
a.sort.reverse.each do |i|
  puts h[i] + 1
end

