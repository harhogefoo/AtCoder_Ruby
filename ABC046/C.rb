n = gets.to_i

ans = gets.chomp.split(" ").map(&:to_i)
(n-1).times do
  t, a = gets.chomp.split(" ").map(&:to_i)

  while ans[0] * a != ans[1] * t
    puts "aa"

    ans[0] += 1
    break if ans[0] * a == ans[1] * t

    ans[0] -= 1
    ans[1] += 1
    break if ans[0] * a == ans[1] * t

    ans[0] += 1
    ans[1] += 1
  end

end
puts "#{ans}"
