# This answer is ... RE: 60 point
n = gets.to_i

num_array = Array.new(n)
num_array.map! { gets.to_i }

key = num_array.uniq.sort
value = (0...key.length).to_a # [0, 1, 2, ...]
ary = [key, value].transpose  # [[0, e1],[1, e2], ...]
h = Hash[*ary.flatten]        # to_h

num_array.each { |e| puts h[e] }
