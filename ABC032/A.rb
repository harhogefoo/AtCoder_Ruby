a = gets.to_i; b = gets.to_i; n = gets.to_i

loop do
  break if n % a == 0 and n % b == 0
  n += 1
end
puts n