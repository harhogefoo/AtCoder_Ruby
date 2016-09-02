=begin
IN
  2012/05/02
OUT
  2013/01/01
---
IN
  2020/05/02
OUT
  2020/05/02
---
IN
  2088/02/28
OUT
  2088/02/29
=end

require "date"

date = gets
loop do
  y, m, d = date.chomp.split('/').map(&:to_f)
  result = (y / m / d).to_s.split('.')
  if result[1] == '0'
    puts date
    break
  end
  date = Date.parse(date)
  date += 1
  date = date.strftime("%Y/%m/%d")
end

