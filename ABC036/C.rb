NL = "\n"
INPUT = 0
OUTPUT = 1

@data = [ # 問題文で入力例と出力例が1〜3個ほど例示されるので、それをコピって貼り付ける
[ # 例-1
<<EOS,  ## 入力例-1
5
3
3
1
6
1
EOS
<<EOS   ## 出力例-1
1
1
0
2
0
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
@test_case = 1
#
### 提出コード ここから ###
n = gets.to_i
ary = []
sq = {}

n.times do |i|
  ary << gets.to_i
end

ary.sort.uniq.each_with_index do |i, ind|
  sq[i] = ind
end

ary.each do |i|
  puts sq[i]
end
### 提出コードここまで ####

assert
