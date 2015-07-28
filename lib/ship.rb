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
      coord = @locations[i].split('')
      if @direction == 'H'
        next_coordinate = coord[0].to_s + coord[1].next.to_s
      elsif @direction == 'V'
        next_coordinate = coord[0].to_s.next.to_s + coord[1].to_s
      end
      @locations << next_coordinate
      i += 1
    end
  end
end
