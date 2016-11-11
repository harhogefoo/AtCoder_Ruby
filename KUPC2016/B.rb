n, k = gets.chomp.split(" ").map(&:to_i)
contests = Array.new

n.times do |i|
  p = gets.chomp
  if contests.length == 0
    contests << [p[0]]
  else
    is_added = false
    contests.each do |ary|
      next if ary.length == k
      unless ary.include?(p[0])
        ary.push(p[0])
        is_added = true
        break
      end
    end

    unless is_added
      contests << [p[0]]
    end
  end
end

count = 0
contests.each do |ary|
  count += 1 if ary.length == k
end
puts count
