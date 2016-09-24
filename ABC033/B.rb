n = gets.to_i

total = 0
town_h = Hash.new
n.times do
  name, pop = gets.split(" ")
  pop = pop.to_i
  town_h[name] = pop
  total += pop
end

majority = total / 2
is_majority = false
town_h.each do |name, pop|
  if pop > majority
    puts name
    is_majority = true
    break
  end
end

unless is_majority
  puts 'atcoder'
end
