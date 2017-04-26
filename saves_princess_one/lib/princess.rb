class Princess

  attr_reader :grid, :princess_coordinates, :mario_coordinates
  def initialize(size, grid)
    @grid = grid
    @mario_coordinates = []
    @princess_coordinates = []
    coordinates_for_mario_and_princess
  end

  def coordinates_for_mario_and_princess
    grid.each_with_index do |row, index|
      mario_coordinates.push(index, spilt_up_row("m", row)) if row.include?("m")
      princess_coordinates.push(index, spilt_up_row("p", row)) if row.include?("p")
    end
    self
  end

  def spilt_up_row(letter, row)
    row.chars.index(letter)
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
    directions
  end
end
