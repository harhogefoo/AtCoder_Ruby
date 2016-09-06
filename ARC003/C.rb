=begin
http://arc003.contest.atcoder.jp/
IN
  3 3
  s52
  743
  32g
OUT
  2.910897
---

明るさ優先探索をすると期待されるOUTと違う結果に．
明るさ優先かつGOALにリーチする探索アルゴリズムにするところで詰まった．

重み付けによる判定が必要？
ゴールに近づくかつ，明るいなど

書きかけのコード．
2016/09/06
=end

n, m = gets.split(" ").map(&:to_i)

map = Array.new
current = Array.new
goal = Array.new
n.times do |i|
  ary = gets.chomp.split("")
  current += [i, ary.index("s")] if ary.index("s")
  goal += [i, ary.index("g")] if ary.index("g")
  map << ary
end


time = 0
min_ill = 10 # 一番暗い明るさ
passed_ary = Array.new
loop do
  passed_ary << current

  max_ill = 0
  next_pos = Array.new
  is_goal = false
  [[0, 1], [1, 0], [-1, 0], [0, -1]].each do |dx, dy|
    x = current[0] + dx
    y = current[1] + dy
    next if x < 0 || n <= x
    next if y < 0 || m <= y
    next if passed_ary.include?([x, y])
    if map[x][y] == "g"
      is_goal = true
      break
    end
    puts "次に移動しようとしている所: x:#{x}, y:#{y}, value:#{map[x][y]}"
    ill = map[x][y].to_i * 0.99 ** time

    puts ill
    if max_ill < ill
      max_ill = ill
      next_pos = Array.new
      next_pos[0] = x
      next_pos[1] = y

      min_ill = max_ill if min_ill > max_ill
    end
  end

  current = next_pos
  print "#{current}\n"

  # デバッグ
  if time > 10
    break
  end

  time += 1

  if is_goal
    break
  end
end

map.each do |a|
  print "#{a}\n"
end

puts min_ill
