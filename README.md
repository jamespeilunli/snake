# Snake

My implementation of the game [Snake](https://en.wikipedia.org/wiki/Snake_(video_game_genre)) in Ruby.

## Dependencies

This project uses the [ruby2d](https://github.com/ruby2d/ruby2d) gem as a game engine. Install it by running `gem install ruby2d`. For Linux, you'll need to install a few packages before installing the gem. See [here](https://www.ruby2d.com/learn/linux/) for instructions.

## TODO

- [x] Moveable snake head
- [x] Moveable snake body
- [x] Apple mechanics
  - [x] Apple random spawn
  - [x] Make snake length change when eaten
  - [x] Make apple not spawn inside snake
- [x] Collision detection and game over on collision
- [ ] Make moving the opposite direction impossible (i.e. if you're moving right and you quickly press up the left you can still go backwards)
- [ ] Win detection
- [ ] Thinner snake

## Code Strucutre
* `snake.rb` is the main file and controls user input, running Game.tick, and window setup.
* `game.rb` holds the `Game` class that holds methods and variables about the snake. It has a `tick` method that shows the next tick in the game.
* `snake_bits.rb` holds the `SnakeBit` and `SnakeHead` classes that have methods related to what the snake bits and snake head can do.
* `apple.rb` holds the `Apple` class that has methods that do what the apple can do.
