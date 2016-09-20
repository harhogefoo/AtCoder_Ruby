# http://abc044.contest.atcoder.jp/tasks/abc038_a

gets
ary = gets.split(" ").map(&:to_i)

prev_num, inc_num, count = 0, 0, 0
ary.each do |a|
  if prev_num < a
    inc_num += 1
  else
    inc_num = 1
  end
  count += inc_num
  prev_num = a
end

puts count

