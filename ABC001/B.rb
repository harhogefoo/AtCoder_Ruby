m = gets.to_f

m = m / 1000.0

if m < 0.1
  puts '00'
elsif 0.1 <= m and m <= 5.0
  m = m * 10.0
  if m < 10.0
    puts "0#{m.to_i}"
  else
    puts "#{m.to_i}"
  end
elsif 6.0 <= m and m <= 30.0
  m += 50
  puts "#{m.to_i}"
elsif 35.0 <= m and m <= 70.0
  m -= 30
  m /= 5
  m += 80
  puts "#{m.to_i}"
else
  puts '89'
end
