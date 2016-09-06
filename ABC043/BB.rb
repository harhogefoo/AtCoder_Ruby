# http://abc044.contest.atcoder.jp/tasks/abc043_a

ary = gets.split("")
r = Array.new

ary.each do |a|
  case a
    when '0', '1'
      r.push(a)
    when 'B'
      r.pop
    else
  end
end
puts r.join


