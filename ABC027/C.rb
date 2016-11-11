ary = gets.chomp.split(" ").map(&:to_i)
puts ary.combination(3).map { |i| i.inject(:+) }.sort[-3]

