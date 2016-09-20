# http://abc044.contest.atcoder.jp/tasks/abc038_a
# too complex to analyze by data flow algorithm

n = gets.to_i

box_ary = Array.new
w, h = gets.split(" ").map(&:to_i)
box_ary << [[w, h]]

1.upto(n - 1) do |i|
  w1, h1 = gets.split(" ").map(&:to_i)

  is_packed = false
  box_ary.each do |box|
    # print "#{box}\n"
    # box内で一番大きい箱
    if box[-1][0] < w1 and box[-1][1] < h1
      box.push([w1, h1])
      is_packed = true
    # box内で一番小さい箱
    elsif w1 < box[0][0] and h1 < box[0][1]
      box.unshift([w1, h1])
      is_packed = true
    else
      for b_i in 0...box.length
        b_j = b_i + 1
        if b_j == box.length
          break
        end
        if (box[b_i][0] < w1 and box[b_i][1] < h1) and (w1 < box[b_j][0] and h1 < box[b_j][1])
          box.insert(b_j, [w1, h1])
          is_packed = true
        elsif (box[b_i][0] <= w1 or box[b_i][1]) and (w1 < box[b_j][0] and h1 < box[b_j][1])
          box[b_i][0] = w1
          box[b_i][1] = h1
          is_packed = true
        end
      end
    end
  end
  unless is_packed
    box_ary << [[w1, h1]]
  end
end

length = 0
box_ary.each do |box|
  if length < box.length
    length = box.length
  end
end
# print "#{box_ary}\n"
puts length

