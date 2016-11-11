n = gets.chomp.to_i
ary = ["a", "b", "c"]
puts ary.repeated_permutation(n).map { |i| i.join }