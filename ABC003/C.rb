
n, k = gets.split(" ").map(&:to_i)
r = gets.split(" ").map(&:to_i)
r.sort!

rate = 0
k.downto(1) do |i|
  rate = (rate + r[-i]) / 2.0
end
puts rate
