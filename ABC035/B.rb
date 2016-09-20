s = gets.chomp.split("")
t = gets.to_i

x = y = 0
count = 0
s.each do |c|
  case c
    when 'L' then x -= 1
    when 'R' then x += 1
    when 'U' then y -= 1
    when 'D' then y += 1
    else count += 1
  end
end

d = x.abs + y.abs
case t
  when 1 then puts d + count
  when 2 then (d >= count) ? d - count : (count -d) % 2
  else
end
