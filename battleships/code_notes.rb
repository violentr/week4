it 'should know it\'s player\'s name' do
  player = double :player_class
  board = Board.new(player)
  expect(player).to receive(:first_name).and_return('First')
  expect(player).to receive(:last_name).and_return('Last')

  expect(board.owner).to eq 'First Last'
end



attr_reader :player

# is the same as

def player
  @player      #read saved instance var
end



it 'should not change a square with a hit or miss' do
  board.change_square_at('A1','x')
  expect {
    board.change_square_at('A1','o')
  }.to raise_error(ArgumentError, 'Only allowed to change water or ships.')
end

def change_square_at(location, value)
  # ...
  # ...
  Check that current value is not a hit or miss
  current_value = @rows[row][column]
  raise ArgumentError.new('Only allowed to change water or ships.') if current_value == 'x' or current_value == 'o'
  # ...
end