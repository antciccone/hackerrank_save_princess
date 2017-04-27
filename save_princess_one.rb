require './saves_princess_one/lib/princess'

puts "Please enter a number between 3 and 100"
m = gets.to_i
puts "Please enter the grid pattern along with Mario's position represented by m and princesses position represnted by p. For example if you entered the number 3. --- (hit enter), -m- (hit enter), p-- (hit enter). This will display the grid as well as Mario's path to save Princess"

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

princess = Princess.new(m, grid)
puts princess.create_directions
