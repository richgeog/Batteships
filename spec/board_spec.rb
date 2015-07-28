require 'board'

describe Board do
	it 'stores the location of ships' do
		ship1 = Ship.new
		subject.place ship1.boat
		expect(subject.show_board).to eq [["A1"]]
	end

	it 'allows player to take a shot' do
		expect(subject).to respond_to(:shoot).with(1).argument
	end

	it 'returns hit if ship is shot' do
		ship1 = Ship.new
		subject.place ship1.boat
		array = ship1.boat
		expect(subject.shoot array).to eq "Hit!"
	end

	it 'removes ship co-ordinates from array if hit' do
		ship1 = Ship.new
		subject.place ship1.boat
		array = ship1.boat
		subject.shoot array
		expect(subject.show_board).to eq []
	end

	it 'sinks the ship when it has been hit' do
		ship1 = Ship.new
		subject.place ship1.boat
		array = ship1.boat
		subject.shoot array
		expect(subject.sunk).to eq "Sunk"
	end

	it 'gives the message that you\'ve won' do
		ship1 = Ship.new
		subject.place ship1.boat
		array = ship1.boat
		subject.shoot array
		expect(subject.winner).to eq 'You\'re the winner!'
	end

end
