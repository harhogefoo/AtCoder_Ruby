n = gets.to_i
array = Array.new

n.times do |i|
  array.push(gets.to_i)
end

sorted = array.sort

tbl = Hash.new
prev = -1
idx = -1

sorted.each do |num|
  tbl[num] = (idx += 1) if num != prev
  prev = num
end

array.each do |i|
  puts tbl[i]
end
