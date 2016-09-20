# http://abc044.contest.atcoder.jp/tasks/abc038_a
=begin
IN
5
8 8
5 3
2 2
4 2
2 1

OUT
4
=end
def read_nums; gets.split.map(&:to_i); end

n, = read_nums
# key: width, value: heightの配列
# hash[k] = []という初期化
boxes = Hash.new{|h, k| h[k] = []}
n.times do
  w, h = read_nums
  boxes[w] << h
end

puts boxes

routes = [0]  # dummy
# 横幅が短い箱からスタート
boxes.keys.sort.each do |w|
  # height配列をソートして，降順each
  boxes[w].sort.reverse_each do |h|
    # 対象の箱よりも縦が長い箱があるインデックスを見つけ，
    # 縦の長さを短くする
    i = (0...routes.length).bsearch {|i_| routes[i_] >= h }
    if i.nil?
      routes.push(h)
    elsif h < routes[i]
      routes[i] = h
    end
    print "#{routes}\n"
  end
end

puts routes.length - 1
