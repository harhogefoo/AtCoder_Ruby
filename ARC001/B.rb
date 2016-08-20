=begin
IN 1
7 34
OUT 1
5
---
IN 2
19 28
OUT 2
---
IN 3
10 10
OUT 3
0
=end

current, purpose = gets.split(" ").map(&:to_i)

action_hash = {
    UP1: 1,
    UP5: 5,
    UP10: 10,
    DONW1: -1,
    DOWN5: -5,
    DOWN10: -10
}

count = 0
while true
  if current == purpose
    break
  end

  # 最も0に近いものを探索
  calc_hash = action_hash.dup
  min_k_v = Array.new
  action_hash.each do |status, value|
    c = (current + value) * -1
    calc = (purpose + c).abs
    calc_hash[status] = calc
    min_k_v = calc_hash.min { |a, b| a[1] <=> b[1]}
  end

  current += action_hash[min_k_v[0]]
  count += 1
end

puts count

