# WA ...
gets
a = gets.split(" ").map(&:to_i)

h = Hash.new
a.length.times do |i|
  takahashi_max = 0
  aoki_max = 0
  a.length.times do |j|
    next if i == j

    takahashi_total = 0
    aoki_total = 0
    s = i < j ? a[i..j] : a[j..i]
    s.select.with_index do |e, k|
      takahashi_total += e if k % 2 == 0
      aoki_total += e if k % 2 == 1
    end

    if aoki_max < aoki_total
      aoki_max = aoki_total
      takahashi_max = takahashi_total
    end
  end
  h[i] = takahashi_max
end
puts h.values.max