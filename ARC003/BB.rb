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
readlines[0...n].map{|s| s.strip.reverse}.sort.each{|s| puts s.reverse}

