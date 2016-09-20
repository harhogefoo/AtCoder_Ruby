# http://abc044.contest.atcoder.jp/tasks/abc044_c

s = gets.chomp.split("")
digit = s.length - 1

comb_count = 2 ** digit

answer = 0
comb_count.times do |i|
  ary = ("%0#{digit}b" % i).split("")
  formula = ""
  s.length.times do |j|
    formula += s[j]
    if ary[j] == "1"
      formula += "+"
    end
  end
  answer += eval(formula)
end

puts answer
