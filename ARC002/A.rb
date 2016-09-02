=begin
IN
  1001
OUT
  NI
---
IN
  2012
OUT
  YES
---
IN
  2100
OUT
  NO
---
IN
  2000
OUT
  YES
=end

y = gets.to_i
if y % 400 == 0
  puts 'YES'
elsif y % 100 == 0
  puts 'NO'
elsif y % 4 == 0
  puts 'YES'
else
  puts 'NO'
end
