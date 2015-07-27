require 'board'

describe Board do
	it 'stores the location of ships' do
		ship1 = Ship.new
		board = Board.new
		board.place ship1.boat
		expect(board.show_board).to eq [["A1"]]
	end

	it 'allows player to take a shot' do
		expect(subject).to respond_to(:shoot).with(1).argument
	end

	it 'returns hit if ship is shot' do
		ship1 = Ship.new
		board = Board.new
		board.place ship1.boat
		array = ship1.boat
		expect(board.shoot array).to eq "Hit!"
	end

	it 'removes ship co-ordinates from array if hit' do
		ship1 = Ship.new
		board = Board.new
		board.place ship1.boat
		array = ship1.boat
		board.shoot array
		expect(board.show_board).to eq []
	end

end
