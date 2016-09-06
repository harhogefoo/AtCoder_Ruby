# http://abc044.contest.atcoder.jp/tasks/abc044_a

n = gets.to_i
k = gets.to_i
x = gets.to_i
y = gets.to_i

cost = 0
n.times do |i|
  if i < k
    cost += x
  else
    cost += y
  end
end
puts cost
