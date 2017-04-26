class Princess

  attr_reader :grid, :princess_coordinates, :mario_coordinates
  def initialize(size, grid)
    @grid = grid
    @mario_coordinates = []
    @princess_coordinates = []
  end

  def display_path_to_princess


  end

end

#get coordinates of princess and mario
#once coordinates are located calculate disance between mario and princess
#possibly store their coordinates in an array
#once you find the distance between both - use Directions up, down, left, right
#initialize with grid - easier to access from all methods
