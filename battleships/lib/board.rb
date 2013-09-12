class Board

  attr_reader :player, :rows

  def initialize (player)
    @player = player #saving argument in instance var
    @rows = Array.new(10) { Array.new(10, '') }
  end

  def owner
    @player.name
  end

  def columns
    @rows.transpose
  end

  def at_coordinates(location)
    # take location like 'D3' and look up the corresponding element in the arrays
    index_of = row_and_column_for(location)
    @rows[index_of[:row]][index_of[:column]]
  end

  def change_square_at(location, value)
    # set value of the corresponding element in the arrays
    index_of = row_and_column_for(location)
    @rows[index_of[:row]][index_of[:column]] = value
  end

  def row_and_column_for(location)
    separate = location.chars 
    row = separate[1].to_i - 1
    column = separate[0].ord - 65
    return { :row => row, :column => column }
  end

end