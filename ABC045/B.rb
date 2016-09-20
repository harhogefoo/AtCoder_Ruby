# http://abc044.contest.atcoder.jp/tasks/abc044_b

sa = gets.chomp
sb = gets.chomp
sc = gets.chomp

if sa.length > sb.length and sa.length > sc.length
  stage = sa[0]
elsif sb.length > sa.length and sb.length > sc.length
  stage = sb[0]
else
  stage = sb[0]
end

loop do
  if stage == 'a'
    sa[0] = ""
    stage = sa[0]
  elsif stage == 'b'
    sb[0] = ""
    stage = sb[0]
  elsif stage == 'c'
    sc[0] = ""
    stage = sc[0]
  end

  if sa.length == 0
    puts "A"
    break
  elsif sb.length == 0
    puts "B"
    break
  elsif sc.length == 0
    puts "C"
    break
  end
end
