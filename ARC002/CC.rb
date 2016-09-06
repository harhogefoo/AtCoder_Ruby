# coding: utf-8
=begin
http://arc002.contest.atcoder.jp/tasks/arc002_3
IN
  4
  ABXY
OUT
  2
---
IN
  13
  ABABABABXBXBX
OUT
  7
---
IN
  8
  AABBAABB
OUT
  4
=end

array = ["AA", "AB", "AX", "AY",
         "BA", "BB", "BX", "BY",
         "XA", "XB", "XX", "XY",
         "YA", "YB", "YX", "YY"]

gets
command = gets.chomp

n = 1000
for i in 0..14 do      # 0 ~ 14までAA~YXまで
  for j in i+1..15 do  # 1 ~ 15までAB~YYまで
    # puts "a[#{i}] = #{array[i]}"
    # puts "a[#{j}] = #{array[j]}"
    sub_command = command.gsub(array[i], "L").gsub(array[j], "R")
    if sub_command.length < n
      n = sub_command.length
    end
  end
end
puts n
