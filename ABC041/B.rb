# http://abc044.contest.atcoder.jp/tasks/abc041_b


a, b, c = gets.split(" ").map(&:to_i)
puts (a * b * c) % (10 ** 9 + 7)

