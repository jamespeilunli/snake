class SnakeBit

    attr_accessor :pos, :color, :cur_square, :size

    def initialize(pos, size, color="lime")
        @pos = pos
        @color = color
        @size = size
        @cur_square = nil
    end

    def display
        cur_square.remove if cur_square
        @cur_square = Square.new(
            x: pos[0]*size, y: pos[1]*size,
            size: size,
            color: color
        )
    end

end

class SnakeHead < SnakeBit

    attr_accessor :gb_width, :gb_height, :direction

    def initialize(gb_width, gb_height, size, pos, color="lime")
        super(pos, size, color)

        @gb_width = gb_width
        @gb_height = gb_height
        @direction = "right"
    end

    def move
        case direction
        when "up"
            pos[1] -= 1
        when "down"
            pos[1] += 1
        when "left"
            pos[0] -= 1
        when "right"
            pos[0] += 1
        end
    end

    def ate_apple?(apple)
        apple.pos == pos
    end

    def collided?(snake_bits)
        # collided with wall
        return true if (0 > pos[0] || pos[0] >= gb_width || 0 > pos[1] || pos[1] >= gb_height)

        # collided with snake
        snake_bits.each do |snake_bit|
            if snake_bit.pos == pos
                return true
            end
        end

        # else
        false
    end

end

