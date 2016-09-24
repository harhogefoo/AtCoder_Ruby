n = gets.to_i
n.uniq!
if n.length == 1
  puts "SAME"
else
  puts "DIFFERENT"
end
