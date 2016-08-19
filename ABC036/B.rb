require 'pp'
n = gets.to_i
ary = Array.new
n.times do
  str = gets.chomp.split("")
  ary.push(str)
end
ary.transpose.map(&:reverse).each do |a|
  puts a.join
end
