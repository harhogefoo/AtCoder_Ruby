n = gets.to_i

if n == 100
  puts 'Perfect'
elsif 90 <= n and n <= 99
  puts 'Great'
elsif 60 <= n and n <= 89
  puts 'Good'
else
  puts 'Bad'
end