# http://abc044.contest.atcoder.jp/tasks/abc041_a

x = gets.chomp
scale = ["Do", "Re", "Mi", "Fa", "So", "La", "Si"]

key = "WBWBWWBWBWBWWBWBWWBWBWBW"
hash = Hash.new
scale.each do |s|
  hash[String.new(key[0,20])] = s
  move = 2
  if s == "Mi"
    move = 1
  end
  n = key[0, move]
  key[0, move] = ""
  key += n
end

puts hash[x]
