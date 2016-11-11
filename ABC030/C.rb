n, m = gets.split(" ").map(&:to_i)
x, y = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

ans = 0
current = 0
is_a_airport = true
loop do
  if is_a_airport
    break if a.length == 0
    if current <= a[0]
      current = a[0]
      current += x
      is_a_airport = false
    end
    a.shift
  else
    if current <= b[0]
      current = b[0]
      current += y
      is_a_airport = true
      ans += 1
    end

    b.shift
    break if b.length == 0
  end
end
puts ans