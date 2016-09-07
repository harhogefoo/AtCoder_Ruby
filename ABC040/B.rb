# http://abc044.contest.atcoder.jp/tasks/abc041_b
# しゃけい

n = gets.to_i

min = 100000
(1..317).to_a.each do |h|
  w = n / h
  r = n % h
  result = (h - w).abs + r
  min = result if result < min
  puts "h: #{h}"
  puts "w: #{w}"
  puts "r: #{r}"
  break if min == 1
end
puts min
