# http://abc044.contest.atcoder.jp/tasks/abc043_a

ary = gets.split("")

str = ""
ary.each do |a|
  if a == "B"
    next if str.empty?
    str[-1] = ""
  else
    str << a
  end
end
puts str


