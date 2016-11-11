
ary = "atcoder".split("")

s = gets.chomp.split("")
t = gets.chomp.split("")

if s.length != t.length
  puts 'You will lose'
  exit
end

s.length.times do |i|
  if s[i] != t[i]
    if s[i] == '@' and ary.include?(t[i])
      next
    end
    if t[i] == '@' and ary.include?(s[i])
      next
    end
    puts 'You will lose'
    exit
  end
end
puts 'You can win'

