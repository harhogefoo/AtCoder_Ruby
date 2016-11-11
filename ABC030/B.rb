n, m = gets.split(" ").map(&:to_i)

n = n - 12 if n >=12
long = m != 0 ? (360 / 60.0) * m : 0
t_short = m != 0 ? (360 / 12 / 60.0) * m : 0
short = (360 / 12.0) * n + t_short

ans = (long - short).abs
ans = 360 - ans if ans > 180
puts ans