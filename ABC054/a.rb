
table = {
    2 => 1,
    3 => 2,
    4 => 3,
    5 => 4,
    6 => 5,
    7 => 6,
    8 => 7,
    9 => 8,
    10 => 9,
    11 => 10,
    12 => 11,
    13 => 12,
    1 => 13,
}

a, b = gets.chomp.split(' ').map(&:to_i)

if table[a] < table[b]
  puts 'Bob'
elsif table[a] > table[b]
  puts 'Alice'
else
  puts 'Draw'
end