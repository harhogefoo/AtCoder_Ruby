# http://abc044.contest.atcoder.jp/tasks/abc043_a

n = gets.to_i
ary = gets.split(" ").map(&:to_i)
avg = ary.inject(0){ |r, i| r += i} / ary.size

avg_ary = [avg - 1, avg, avg + 1]

min_cost = -1
avg_ary.each do |arg|
  cost = 0
  ary.each do |a|
    cost += (a - arg) ** 2
  end
  min_cost = cost if min_cost == -1
  min_cost = cost if cost < min_cost
end
puts min_cost
