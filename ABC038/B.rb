# http://abc044.contest.atcoder.jp/tasks/abc041_a

d1 = gets.split(" ")
d2 = gets.split(" ")

if d1.include?(d2[0]) || d1.include?(d2[1])
  puts "YES"
else
  puts "NO"
end
