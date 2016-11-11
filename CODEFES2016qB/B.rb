n, a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

count_a = 0
count_b = 0
s.length.times do |i|
  if s[i] == 'a'
    if count_a + count_b < a + b
      puts 'Yes'
      count_a += 1
    else
      puts 'No'
    end
  elsif  s[i] == 'b'
    if count_a + count_b < a + b && count_b < b
      puts 'Yes'
      count_b += 1
    else
      puts 'No'
    end
  else
    puts 'No'
  end
end
