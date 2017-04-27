require './saves_princess_two/lib/princess'

puts "Please enter a number between 3 and 100"
n = gets.to_i

puts "Please enter the coordinates for Mario. For example if you entered 3 as your number above. 1 1 (hit enter)"
r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

puts "Please enter the grid pattern along with princesses position represnted by p. For example if you entered the number 3 and marios positon as 1 1. --- (hit enter), -m- (hit enter), p-- (hit enter). This will display the grid as well as Mario's first move to save Princess"
(0...n).each do |i|
    grid[i] = gets
end

princess = Princess.new(n,r,c,grid)
puts princess.create_directions
