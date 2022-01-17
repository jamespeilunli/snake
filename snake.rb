require "ruby2d"
require_relative "game"

# variables
# gb_ stands for gameboard 
gb_width = 10 
gb_height = 10
size = 50 # size is length of each square
game = Game.new(gb_width, gb_height, size)

set title: "Snake"
set background: "black"
set width: size*gb_width
set height: size*gb_height

t = 0
update do
    if t % 20 == 0 # 3 times a second 
        game.tick
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
