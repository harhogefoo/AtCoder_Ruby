=begin
IN
    9
    131142143

OUT
    4 1
---
IN
    20
    12341234123412341234
OUT
    5 5
---
IN
    4
    1111
OUT
    4 0
=end

n = gets.to_i
ans = gets.split("").map(&:to_i)

collect = [1, 2, 3, 4]
count_nums = []
collect.each do |c|
  count = 0
  ans.each do |a|
    if c == a
      count += 1
    end
  end
  count_nums.push(count)
end

print ("#{count_nums.max} #{count_nums.min}\n")