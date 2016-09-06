# http://abc044.contest.atcoder.jp/tasks/abc043_a

x = gets.to_i
numbers = gets.chomp.split.map(&:to_i)

average = numbers.inject(:+) / x.to_f
ave_min = average.floor
ave_max = average.ceil

ss1 = 0
ss2 = 0

numbers.each do |n|
  ss1 += (n - ave_min) ** 2
  ss2 += (n - ave_max) ** 2
end
puts [ss1, ss2].min
