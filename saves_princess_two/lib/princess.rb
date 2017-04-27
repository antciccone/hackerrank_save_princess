class Princess

  attr_reader :mario_coordinates
  def initialize(n, row, column, grid)
    @grid = grid
    @mario_coordinates = [row, column]
    @princess_coordinates = []
  end

end

# first glance at second problem is that it looks at similar to first.
# Differences are marios position is given right away and only output next move
# follow similar logic of initializing with mario and princes
# cooridnates method will only grab the princess location
# outputting princess location will only print the first move
