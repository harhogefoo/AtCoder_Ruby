s = gets.chomp.split("")
k = gets.to_i

alpha = ('b'..'z').to_a.reverse!
num = (1..25).to_a
ary = [alpha, num].transpose
h = Hash[*ary.flatten]
puts h

i = 0
while 26 < k
  break if s.length == i
  k -= h[s[i]]
  s[i] = 'a'
  i += 1
end
puts "#{s}"
copy = Array.new(s)
copy.delete("a")
puts "#{copy}"
copy.map! { |c| h[c] }
puts "#{copy}"



puts k

