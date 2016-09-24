n, k = gets.split.map(&:to_i)

hash = Hash.new
n.times do |i|
  w, p = gets.split.map(&:to_i)
  hash[[w, p]] = w - p
end

hash = Hash[ hash.sort_by { |_, v| v } ]

salt = 00
water = 0
k.times do
  ary = hash.shift
  salt += ary[0][0] * ary[0][1].to_f / 100.0
  water += ary[0][0]
end

puts (salt / water.to_f) * 100.0
