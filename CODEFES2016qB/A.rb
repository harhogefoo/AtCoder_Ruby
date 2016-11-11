s = gets.chomp
codefestival = "CODEFESTIVAL2016"

count = 0
s.length.times do |i|
  if s[i] != codefestival[i]
    count += 1
  end
end
puts count

