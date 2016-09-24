str = gets.chomp
n = gets.to_i

ary = Array.new
(str.length - n + 1).times do |i|
  ary.push(str[i...i + n])
end
puts (ary.uniq).length
