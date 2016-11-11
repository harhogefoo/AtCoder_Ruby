
@t = gets.to_i
n = gets.to_i
a = gets.split(" ").map(&:to_i)
m = gets.to_i
b = gets.split(" ").map(&:to_i)

def sell(a, kyaku)
  tako = a.shift
  if tako == nil
    puts 'no'
    exit
  end

  if kyaku - tako > @t or kyaku - tako < 0
    sell(a, kyaku)
  end
end


b.each do |kyaku|
  sell(a, kyaku)
end
puts 'yes'
