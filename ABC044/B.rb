# http://abc044.contest.atcoder.jp/tasks/abc044_b

w = gets.chomp.split("")
uniq_w = w.uniq
ans = "Yes"
uniq_w.each do |a|
  if w.count(a) % 2 != 0
    ans = "No"
    break
  end
end
puts ans

