require_relative "snake_bit"
require_relative "apple"

class Game

    attr_accessor :gb_width, :gb_height, :size, :snake_head, :snake_bits, :apple

    def initialize(gb_width, gb_height, size)
        @gb_width = gb_width
        @gb_height = gb_height
        @size = size
        @apple = Apple.new(gb_width, gb_height, size)
        apple.display

        @snake_head = SnakeHead.new(gb_width, gb_height, size, [gb_width/2, gb_height/2])
        @snake_bits = [] # order: tail (leftmost) to head (rightmost) but without head
    end

    def display
        (snake_bits + [snake_head]).each do |snake_bit|
            snake_bit.display
        end
    end

    def tick
        # get old snake head pos and move snake head
        old_head_pos = snake_head.pos.dup
        snake_head.move

        if snake_head.collided?(snake_bits)
            return "game over"
        end

        ate_apple = snake_head.ate_apple?(apple)
        if ate_apple
            snake_bits.push(SnakeBit.new(old_head_pos, size))
            apple.new_pos
            apple.display
        end

        # if theres no apple
        # remove tail of snake and change its position and put it at front of snake_bits 
        # in order to fill the empty gap caused by snake head moving
        if !ate_apple && snake_bits.length != 0
            snake_tail = snake_bits.shift
            snake_tail.pos = old_head_pos
            snake_bits.push(snake_tail)
        end

        display

        nil
    end

end
