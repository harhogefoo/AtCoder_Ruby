
ary = Array.new
4.times do
  ary.push(gets.split(" "))
end

ary.reverse!
ary.length.times do |i|
  puts ary[i].reverse.join(" ")
end
