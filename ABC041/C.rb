# http://abc044.contest.atcoder.jp/tasks/abc041_c


n = gets.to_i
ary = gets.split(" ").map(&:to_i)
h = Hash.new
ary.length.times do |i|
  h[i+1] = ary[i]
end
h = Hash[ h.sort_by{ |_, v| -v } ]
puts h.keys

