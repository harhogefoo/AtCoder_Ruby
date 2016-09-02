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

n = gets.to_i
command = gets
commands = ['A', 'B', 'X', 'Y']
# コマンドから2つの順列を生成
# ここは素直にベタ書きをしたほうが処理速度は速い
command_comb = commands.repeated_permutation(2).map{|a, b| a + b}

# 生成したコマンドからヒットする数が0でないものを抽出
count_hash = Hash.new
command_comb.each do |c|
  count = command.scan(c).length
  if count != 0
    count_hash[c] = command.scan(c).length
  end
end

# 置換テストをして最も文字数が少なくなる2つのコマンドを抽出
sub_hash = Hash.new
count_hash.each do |cmd, count|
  sub_hash[cmd] = command.gsub(cmd, "D").length
end
keys = Hash[ sub_hash.sort_by {| _, v| v} ].keys

# 候補が2つよりも多い場合は，最も最適な組み合わせを見つける
if keys.size > 2
  l, r = ""
  keys = keys.combination(2).map{|a, b| [a, b]}
  min = n
  keys.each do |cmd|
    c = command
    c = c.gsub(cmd[0], "L")
    c = c.gsub(cmd[1], "R")

    len = c.chomp.length
    if len < min
      min = len
      l = cmd[0]
      r = cmd[1]
    end
  end
  command.gsub!(l, "L")
  command.gsub!(r, "R")
end

if keys.size == 2
  command.gsub!(keys[0], "L")
  command.gsub!(keys[1], "R")
end

if
  keys.size == 1
  command.gsub!(keys[0], "L")
end

puts command.chomp.length
