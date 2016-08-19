a, b = gets.split(" ").map(&:to_i)
box_num = b / a
if a * box_num < b
  box_num += 1
end
puts box_num
