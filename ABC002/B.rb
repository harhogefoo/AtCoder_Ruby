NL = "\n"
INPUT = 0
OUTPUT = 1

@data = [ # 問題文で入力例と出力例が1〜3個ほど例示されるので、それをコピって貼り付ける
[ # 例-1
<<EOS,  ## 入力例-1
chokudai
EOS
<<EOS   ## 出力例-1
chkd
EOS
],
  [ # (問題文で与えられれば)例-2
<<EOS,  ## 入力例-2
okanemochi
EOS
<<EOS   ## 出力例-2
knmch
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
@test_case = 2
#
# ### 提出コード ここから ###
ary = ['a', 'i', 'u', 'e', 'o']
str = gets.chomp.split("")

ary.each do |a|
  str.each do |s|
    if s == a
      str.delete(a)
    end
  end
end

puts str.join
# ### 提出コード ここまで ###
#
# # 動作が正しいかチェック
assert
