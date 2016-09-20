# This answer is TLE 30 point
n = gets.to_i

num_array = Array.new
num_array[0] = gets.to_i
answer = Array.new
answer[0] = num_array[0]
(n - 1).times do
  input = gets.to_i
  answer.push(input)
  next if num_array.include?(input)

  if input < num_array[0]
    num_array.unshift(input)
  elsif num_array[-1] < input
    num_array.push(input)
  else
    index = (0...num_array.length).bsearch { |i| num_array[i] >= input }
    num_array.insert(index, input)
  end
end

value = (0...num_array.length).to_a # [0, 1, 2, ...]
ary = [num_array, value].transpose  # [[0, e1],[1, e2], ...]
h = Hash[*ary.flatten]              # to_h

answer.each { |e| puts h[e] }
