# N = 2015を考える -> 0から計算していくので + 1して考える
# 1の位には 0123456789のパターンが 2016 / 10  = 201こ 出現
# 最後の桁では 2016 % 10 = 6この数字"012345"が並ぶ
# 1という数字は 201 + 1 = 202 出現

n = gets.chomp.to_i
i = 10
count = 0
n.to_s.length.times do
  c1 = 2016 / i
  c2 = 2016 % i

  if c2.to_s.length > 1
    c3 = c2.to_s.reverse.map { |j| j.to_i }
    c3[0] * 10 ** (c3.length - 1)
  end
  c = c1 + c2
  count += c
end
