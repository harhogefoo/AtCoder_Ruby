# TLE 100 points
width, height = gets.split(" ").map(&:to_i)
width -= 1
height -= 1
def combination(n, k)
  k = n - k if 2 * k > n
  return 1 if k == 0
  ((n - k + 1)..n).reduce(&:*) / ((1..k).reduce(&:*))
end

puts combination(width + height, height) % (10 ** 9 + 7)

