# http://abc044.contest.atcoder.jp/tasks/abc043_a

x = gets.to_i
numbers = gets.chomp.split.map(&:to_i)

avg = (numbers.inject(:+) / x.to_f).round
ans = 0
numbers.each do |n|
  ans += (n - avg) ** 2
end
puts ans
