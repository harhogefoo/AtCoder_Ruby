NL = "\n"
INPUT = 0
OUTPUT = 1

@data = [ # 問題文で入力例と出力例が1〜3個ほど例示されるので、それをコピって貼り付ける
[ # 例-1
<<EOS,  ## 入力例-1
2750 628
EOS
<<EOS   ## 出力例-1
W 5
EOS
],
  [ # (問題文で与えられれば)例-2
<<EOS,  ## 入力例-2
161 8
EOS
<<EOS   ## 出力例-2
C 0
EOS
],
  [ # (問題文で与えられれば)例-3
<<EOS,  ## 入力例-3
3263 15
EOS
<<EOS   ## 出力例-3
NNW 1
EOS
],
  [ # (問題文で与えられれば)例-4
<<EOS,  ## 入力例-4
1462 1959
EOS
<<EOS   ## 出力例-4
SE 12
EOS
],
  [ # (問題文で与えられれば)例-5
<<EOS,  ## 入力例-5
1687 1029
EOS
<<EOS   ## 出力例-5
SSE 8
EOS
],
  [ # (問題文で与えられれば)例-6
<<EOS,  ## 入力例-6
2587 644
EOS
<<EOS   ## 出力例-6
WSW 5
EOS
],
  [ # (問題文で与えられれば)例-7
<<EOS,  ## 入力例-7
113 201
EOS
<<EOS   ## 出力例-7
NNE 3
EOS
],
  [ # (問題文で与えられれば)例-8
<<EOS,  ## 入力例-8
2048 16
EOS
<<EOS   ## 出力例-8
SSW 1
EOS
]
].map { |entry| [entry[INPUT].split(NL), entry[1]] } # 1行ずつ読むように改行で分割して配列にする

@i = -1
def gets
    @data[@test_case - 1][INPUT][@i += 1] + NL
end

@output = ""
def puts(content)
    @output << content.to_s + NL
end

def assert
    return Kernel.puts "OK!"  if @data[@test_case - 1][OUTPUT] == @output
      Kernel.puts "NG!!!",
          "expected: ", @data[@test_case - 1][OUTPUT],
              "actual: ", @output
end

# 実行したいテストケースを指定する
@test_case = 8
#
# ### 提出コード ここから ###
deg, dis = gets.split(" ").map(&:to_i)
deg /= 10.0
deg = ((deg + 11.25) / 22.5).to_i
deg = deg == 1 ? 'NNE'
    : deg == 2  ? 'NE'
    : deg == 3  ? 'ENE'
    : deg == 4  ? 'E'
    : deg == 5  ? 'ESE'
    : deg == 6  ? 'SE'
    : deg == 7  ? 'SSE'
    : deg == 8  ? 'S'
    : deg == 9  ? 'SSW'
    : deg == 10 ? 'SW'
    : deg == 11 ? 'WSW'
    : deg == 12 ? 'W'
    : deg == 13 ? 'WNW'
    : deg == 14 ? 'NW'
    : deg == 15 ? 'NNW'
    : 'N'

dis = (dis/6.0).round
dis = dis.between?(0, 2)     ? 0
    : dis.between?(3, 15)    ? 1
    : dis.between?(16, 33)   ? 2
    : dis.between?(34, 54)   ? 3
    : dis.between?(55, 79)   ? 4
    : dis.between?(80, 107)  ? 5
    : dis.between?(108, 138) ? 6
    : dis.between?(139, 171) ? 7
    : dis.between?(172, 207) ? 8
    : dis.between?(208, 244) ? 9
    : dis.between?(245, 284) ? 10
    : dis.between?(285, 326) ? 11
    : 12
if dis == 0
  deg = 'C'
end
puts "#{deg} #{dis}"
# ### 提出コード ここまで ###
#
# # 動作が正しいかチェック
assert
