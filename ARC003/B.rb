=begin
http://arc003.contest.atcoder.jp/
IN
  5
  chokudai
  kensho
  imos
  yuichirw
  ao
OUT
  chokudai
  ao
  kensho
  imos
  yuichirw
---
IN
  2
  dart
  art
OUT
  art
  dart
=end

n = gets.to_i

word_ary = Array.new
n.times do
  word_ary << gets.chomp.reverse
end

word_ary.sort!
word_ary.each do |word|
  puts word.reverse
end

