n = gets.to_i
a = gets.split(" ").map(&:to_i)

a.length.times do |i|
  tksh = a[i]
  a.length.times do |j|
    next if i == j
    aoki = a[j]
    s = nil
    if i < j
      print "#{a[i..j]}\n"
      a[i..j].inject { |result, item|  }
    else
      print "#{a[j..i]}\n"
    end
  end
end