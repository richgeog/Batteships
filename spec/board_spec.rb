require 'board'

describe Board do

	let(:ship) { double(:ship, :locations => []) }
	let(:ship1) { double(:ship, :locations => ["A1"])}

	it 'stores the location of ships' do
		subject.place ship
		expect(subject.show_board).to eq [ship.locations]
	end

	it 'does not allow ships to overlap' do
		subject.place ship1
		expect{subject.place ship1}.to raise_error 'Ships cannot overlap!'
	end

	it 'allows player to take a shot' do
		expect(subject).to respond_to(:shoot).with(1).argument
	end

	it 'returns hit if ship is shot' do
		subject.place ship
		array = ship.locations
		expect(subject.shoot array).to eq "Hit!"
	end

	it 'removes ship co-ordinates from array if hit' do
		subject.place ship
		array = ship.locations
		subject.shoot array
		expect(subject.show_board).to eq []
	end

	it 'sinks the ship when it has been hit' do
		subject.place ship
		array = ship.locations
		subject.shoot array
		expect(subject.sunk).to eq "Sunk"
	end

	it 'gives the message that you\'ve won' do
		subject.place ship
		array = ship.locations
		subject.shoot array
		expect(subject.winner).to eq 'You\'re the winner!'
	end

end
