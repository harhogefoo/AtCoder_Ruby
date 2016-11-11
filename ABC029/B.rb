count = 0
12.times do
  s = gets.chomp.split("")
  count = s.include?("r") ? count + 1 : count + 0
end
puts count