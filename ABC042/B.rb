# http://abc044.contest.atcoder.jp/tasks/abc042_b

n, l = gets.split(" ").map(&:to_i)

ary = Array.new
n.times do
  ary << gets.chomp
end
puts ary.sort!.join
