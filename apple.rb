class Apple

    attr_accessor :gb_width, :gb_height, :size, :cur_square, :pos, :color

    def initialize(gb_width, gb_height, size, color="red")
        @gb_width = gb_width
        @gb_height = gb_height
        @size = size
        @color = color
        @cur_square = nil

        @pos = [rand(0...gb_width), rand(0...gb_height)]
    end

    def new_pos(snake_bits) # snake_bits includes snake_head here
        @pos = [rand(0...gb_width), rand(0...gb_height)]
        snake_bits.each do |snake_bit|
            if snake_bit.pos == pos
                new_pos(snake_bits)
            end
        end
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
