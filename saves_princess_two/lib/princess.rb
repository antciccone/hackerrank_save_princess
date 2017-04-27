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

  def distance_to_save_princess
    row_moves = mario_coordinates[0] - princess_coordinates[0]
    column_moves = mario_coordinates[1] - princess_coordinates[1]
    [row_moves, column_moves]
  end

  def create_directions(directions=[])
    row_moves, column_moves = distance_to_save_princess
    row_moves < 0 ? directions +=  ["DOWN\n"] * row_moves.abs :  directions += ["UP\n"] * row_moves.abs
    column_moves < 0 ? directions += ["RIGHT\n"] * column_moves.abs : directions += ["LEFT\n"] * column_moves.abs
    directions[0]
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
