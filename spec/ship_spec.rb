require 'ship'

describe Ship do
  it 'tests the size of locations' do
    ship = Ship.new('A1', 'H', 2)
    expect(ship.locations.length).to eq 2
  end

  it 'raises an error when placed outside of the board vertically' do
    expect{ Ship.new('A10', 'V', 2) }.to raise_error 'Invalid placement'
  end

    it 'raises an error when placed outside of the board horizontally' do
    expect{ Ship.new('J10', 'H', 2) }.to raise_error 'Invalid placement'
  end
end
