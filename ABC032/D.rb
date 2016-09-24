n, w = gets.split(" ").map(&:to_i)

p = 1; ary = Array.new
n.times do
  if k < (p *= ary.push(gets.to_i)[-1])
    p /= ary.shift
  elsif p == 0
    puts n
    exit
  end
end
puts ary.length
