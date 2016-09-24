# TLE 50 points
width, height = gets.split(" ").map(&:to_i)

ary = Array.new(width * height){0}
ary[0] = 1
height.times do |h|
  width.times do |w|
    t = w + width * h
    l = w - 1 + width * h
    b = w + width * (h - 1)
    ary[t] += ary[l] if w > 0
    ary[t] += ary[b] if h > 0
  end
end

puts ary[-1] % (10 ** 9 + 7)
