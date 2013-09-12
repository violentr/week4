require 'board'

describe Board do
  let(:board) { Board.new('Batman') }

  it 'should have a player' do
    board = Board.new('Rose')
    expect(board.player).to eq 'Rose'
    board = Board.new('Bob')
    expect(board.player).to eq 'Bob'
  end

  it 'should know it\'s player\'s name' do
    player = double :player_class
    board = Board.new(player)
    expect(player).to receive(:name)

    board.owner
  end

  it 'should have 10 rows exactly' do
    expect(board.rows.count).to eq 10
  end

  it 'should have 10 columns' do
    expect(board.columns.count).to eq 10
  end

  it 'should have 10 items in each row' do
    expect(board.rows.all? { |row| row.count == 10 }).to be_true
  end

  it 'should start with 100 empty sqaures' do
    # expect that all of the squares in all of the rows are empty strings
    expect(board.rows.all? { |row| row.all? { |square| square == '' } }).to be_true
  end

  it 'should be able to find a square from coordinates' do
    expect(board.at_coordinates('D3')).to eq '' #pass an argument
  end

  it 'should change a square at coordinates' do
    board.change_square_at('D3', 'x')
    expect(board.at_coordinates('D3')).to eq 'x'
    board.change_square_at('A4', 's')
    expect(board.at_coordinates('A4')).to eq 's'
  end



end