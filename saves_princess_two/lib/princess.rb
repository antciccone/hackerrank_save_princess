class Princess

  attr_reader :mario_coordinates, :princess_coordinates, :grid

  def initialize(n, row, column, grid)
    @grid = grid
    @mario_coordinates = [row, column]
    @princess_coordinates = []
    find_coordinates_for_princess
  end

  def find_coordinates_for_princess
    grid.each_with_index do |row, index|
      princess_coordinates.push(index, return_column("p", row)) if row.include?("p")
    end
  end

  def return_column(letter, row)
    row.chars.index(letter)
  end
end

# first glance at second problem is that it looks at similar to first.
# Differences are marios position is given right away and only output next move
# follow similar logic of initializing with mario and princes
# cooridnates method will only grab the princess location
# outputting princess location will only print the first move
