s = gets.chomp.split("")

s.length.times do |i|
  s[i] = '' if s[i] != 'C' and s[i] != 'F'
end

s = s.join("")

if s.include?("CF")
  puts "Yes"
else
  puts "No"
end
