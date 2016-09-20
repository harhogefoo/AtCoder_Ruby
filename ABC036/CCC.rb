
n = gets.to_i
array = Array.new
(0..(n-1)).each do
  array.push(gets.to_i)
end

h = Hash.new
array.uniq.sort.each_with_index { |item, index| h[item] = index }

print (array.map { |i| h[i] }).join("\n")
