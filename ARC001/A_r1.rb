=begin
IN
    9
    131142143

OUT
    4 1
---
IN
    20
    12341234123412341234
OUT
    5 5
---
IN
    4
    1111
OUT
    4 0
=end

n = gets.to_i
str = gets
collect_num_ary = Array.new
('1'..'4').each do |num|
  collect_num_ary << (str.count(num))
end
puts "#{collect_num_ary.max} #{collect_num_ary.min}"
