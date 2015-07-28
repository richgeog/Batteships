class Ship

  attr_reader :locations

	def initialize start_position, direction, size
    @direction = direction
    @size = size
    @locations = [start_position]
    direction_position
	end

  def direction_position
    i = 0
    while i < @size - 1
      if @locations[i].length < 3
        coord = @locations[i].split('')
      else
        coord = @locations[i].split('')
        coord = [coord[0], [coord[1], coord[2]].join('')]
      end
      if @direction == 'V'
        coord[1].next.to_i >= 11 ? (fail 'Invalid placement') : next_coordinate = coord[0].to_s + coord[1].next.to_s
      elsif @direction == 'H'
        coord[0].next.to_s >= 'K' ? (fail 'Invalid placement') : next_coordinate = coord[0].to_s.next.to_s + coord[1].to_s
      end
      @locations << next_coordinate
      i += 1
    end
  end

end
