=begin
IN
  34
  ABABAAABACDDDABADFFABABDABFAAABFAA
OUT
  2.79411764705882
---
IN
  5
  FFFF
OUT
  0
=end

n = gets.to_f
grades = gets

a = grades.count("A") * 4
b = grades.count("B") * 3
c = grades.count("C") * 2
d = grades.count("D") * 1
ans = (a + b + c + d) / n
str_ans = ans.to_s
str_ans = str_ans.split(".")
if str_ans[1] == "0"
  puts str_ans[0]
else
  puts ans
end
