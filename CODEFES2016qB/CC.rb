s = gets.chomp.chars
k = gets.chomp.to_i
n = s.size
count = k

class String
  # a..z -> 0..25
  def assign_integer
    ord - 'a'.ord
  end

  # 引数分だけアルファベットを進める
  def change_char(num)
    ((assign_integer + num) % 26).assign_alphabet
  end
end

class Integer
  # 0..25 -> a..z
  def assign_alphabet
    (self + 'a'.ord).chr
  end
end

(0..k - 1).each do |i|
  if count == 0
    break
  elsif i == n - 1
    s[i] = s[i].change_char(count)
    break
  elsif s[i] == 'a'
    next
  elsif s[i].assign_integer + count > 25
    int = s[i].assign_integer
    s[i] = s[i].change_char(26 - int)
    count = count - 26 + int
  end
end

puts s.join('')
