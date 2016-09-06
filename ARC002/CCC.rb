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
15.times do |i|           # 0 ~ 14
  (i+1).step(15) do |j|   # 1 ~ 15
    puts "i = #{i}"
    puts "j = #{j}"
    sub_command = command.gsub(array[i], "L").gsub(array[j], "R")
    if sub_command.length < n
      n = sub_command.length
    end
  end
end
