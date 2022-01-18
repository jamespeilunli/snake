require "ruby2d"
require_relative "game"

# variables
# gb_ stands for gameboard 
gb_width = 20 
gb_height = 20
size = 40 # size is length of each square
game = Game.new(gb_width, gb_height, size)

set title: "Snake"
set background: "black"
set width: size*gb_width
set height: size*gb_height

def game_over
    exit
end

t = 0
update do
    if t % 10 == 0 # 6 times a second 
        if game.tick == "game over"
            game_over
        end
    end

    t += 1
end

opposing_direction = {
    "up" => "down",
    "down" => "up",
    "left" => "right",
    "right" => "left"
}

on :key_down do |event|
    if opposing_direction.keys.include?(event.key) && opposing_direction[event.key] != game.snake_head.direction
        game.snake_head.direction = event.key
    end
end

show
