require 'player'

describe Player do

	it 'has a name' do
		player = Player.new :name, :board
		expect(player.name).not_to be_nil
	end

	it 'has ships still floating' do
		player = Player.new :name, :board
		#ship_units = double :ship_units
		expect(player.board_has_ships_still_floating?).to be_true
	end


end