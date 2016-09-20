n = gets.to_i
array = Array.new(n)
array.map! { gets.to_i }

sorted = array.sort
tbl = Hash.new
prev, idx = -1, -1
sorted.each do |num|
  tbl[num] = (idx += 1) if num != prev
  prev = num
end

array.each { |i| puts tbl[i] }
