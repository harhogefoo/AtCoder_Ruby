# http://abc044.contest.atcoder.jp/tasks/abc041_c


n = gets.to_i
ary = gets.split(" ").map(&:to_i)
(1..n).each do |i|
  ary[i - 1] = 1_000_000 * ary[i -1] + i
  puts ary[i -1]
end
ary.sort!.reverse!
ary. each do |v|
  puts v % 1_000_000
end

