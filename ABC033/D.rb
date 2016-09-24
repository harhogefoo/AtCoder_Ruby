# 2点間のベクトル
def vector(p1, p2)
  [p2[0] - p1[0], p2[1] - p1[1]]
end

# 2つのベクトルの内積
# == 0 ならば直角
# < 0 ならば鈍角
# > 0 ならば鋭角
def inner_product(v1, v2)
  v1[0] * v2[0] + v1[1] * v2[1]
end

n = gets.to_i

ary = Array.new
n.times do
  x, y = gets.split(" ").map(&:to_i)
  ary << [x, y]
end

acute, right, obtuse = 0, 0, 0
ary.combination(3) do |c|
  3.times do |i|
    j = (0...3).to_a
    j.delete(i)
    v_a = vector(c[i], c[j[0]])
    v_b = vector(c[i], c[j[1]])
    ans = inner_product(v_a, v_b)

    if ans == 0
      right += 1
      break
    end

    if ans < 0
      obtuse += 1
      break
    end

    if i == 2
      acute += 1
    end
  end
end

puts "#{acute} #{right} #{obtuse}"
