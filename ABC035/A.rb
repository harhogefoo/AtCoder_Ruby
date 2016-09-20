w, h = gets.split(" ").map(&:to_i)

if w / 4 == h / 3
  puts "4:3"
else
  puts "16:9"
end
