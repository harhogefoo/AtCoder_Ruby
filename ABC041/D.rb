# http://abc044.contest.atcoder.jp/tasks/abc041_d
# 未正解

def factorial(number)
  number = 0 if number.nil?
  (1..number).inject(1, :*)
end

def check(count, runner, goal, restrict = [])
  print "runner: #{runner}\n"
  print "goal: #{goal}\n"
  print "restrict: #{restrict}\n"

  flag = true
  restrict.each do |a, b|
    if goal.index(a) == nil and goal.index(b) == nil
      flag = false
      break
    end

    if goal.index(a) and goal.index(b) == nil
      flag = true
    end

    if goal.index(a) != nil and goal.index(b) != nil
      if goal.index(a) > goal.index(b)
        flag = true
      end
    end
  end

  if flag
    count += factorial(runner.length)
  else
    runner.each do |r|
      dup_goal = Array.new(goal)
      dup_goal.push(r)
      dup_runner = Array.new(runner)
      dup_runner.delete(r)
      count += check(count, dup_runner, dup_goal, restrict)
    end
  end
  puts count
  count
end


# n, m = gets.split(" ").map(&:to_i)
n = 5

restrict = [[1,2],[2,3],[3,5],[1,4],[4,5]]
# restrict = []
# restrict = Array.new
# m.times do
#   a = gets.split(" ").map(&:to_i)
#   restrict << a
# end
runner = (1..n).to_a

goal = Array.new
count = 0
(1..n).each do |i|
  dup_runner = Array.new(runner)
  goal = Array.new
  goal.push(i)
  dup_runner -= goal
  count += check(0, dup_runner, goal, restrict)
end
puts count




