require 'ship'

describe Ship do
  it 'tests the size of locations' do
    ship = Ship.new('A1', 'H', 2)
    expect(ship.locations.length).to eq 2
  end
end
